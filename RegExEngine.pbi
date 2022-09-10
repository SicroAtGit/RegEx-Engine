
DeclareModule RegEx
  
  EnableExplicit
  
  EnumerationBinary RegExModes
    #RegExMode_NoCase ; Activates case-insensitive mode
  EndEnumeration
  
  Enumeration NfaSpecialSymbols 256
    #Symbol_Move  ; Used for NFA epsilon moves
    #Symbol_Split ; Used for NFA unions
    #Symbol_Final ; Used for NFA final state
  EndEnumeration
  
  #State_DfaDeadState = 0 ; Index number of the DFA dead state
  
  Structure NfaStateStruc
    symbol.u                  ; Symbol (0-255) or special symbol
    *nextState1.NfaStateStruc ; Pointer to the first next NFA state
    *nextState2.NfaStateStruc ; Pointer to the second next NFA state
  EndStructure
  
  Structure DfaStateStruc
    symbols.u[256] ; Index is the symbol (0-255) and the value is the next DFA state
    isFinalState.u ; Positive number if the DFA state is a final state, otherwise null
  EndStructure
  
  Structure DfaStatesArrayStruc
    states.DfaStateStruc[0] ; Array pointer to the DFA states
  EndStructure
  
  Structure NfaPoolStruc
    List nfaStates.NfaStateStruc() ; Holds all NFA states of the NFA pool
    *initialNfaState.NfaStateStruc ; Pointer to the NFA initial state
  EndStructure
  
  Structure RegExEngineStruc
    List nfaPools.NfaPoolStruc()       ; Holds all NFA pools
    *dfaStatesPool.DfaStatesArrayStruc ; Holds all DFA states
    isUseDfaFromMemory.b               ; `#True` if `UseDfaFromMemory()` was used, otherwise `#False`
  EndStructure
  
  ; Simplifies the return of the match as a string
  Macro GetString(_memoryAddress_, _lengthInBytes_)
    PeekS(_memoryAddress_, (_lengthInBytes_) >> 1)
  EndMacro
  
  ; Creates a new RegEx engine and returns the pointer to the
  ; `RegExEngineStruc` structure. If an error occurred null is returned.
  Declare Init()
  
  ; Compiles the RegEx into a NFA and adds the NFA then to the NFAs pool in the
  ; RegEx engine. On success `#True` is returned, otherwise `#False`.
  ; A unique number can be passed to `regExId` to determine later which RegEx
  ; has matched. With the optional `regExModes` parameter it can be defined
  ; which RegEx modes should be activated at the beginning.
  Declare AddNfa(*regExEngine.RegExEngineStruc, regExString$, regExId = 0, regExModes = 0)
  
  ; Creates a single DFA from the existing NFAs in the RegEx engine. `Match()`
  ; then always uses the DFA and is much faster. Because the NFAs are no longer
  ; used after this, they are cleared by default. The clearing can be turned
  ; off by setting `clearNfa` to `#False`. On success `#True` is returned,
  ; otherwise `#False`. If a DFA already exists, the DFA will be freed before
  ; creating a new DFA.
  Declare CreateDfa(*regExEngine.RegExEngineStruc, clearNfa = #True)
  
  ; Frees the RegEx engine
  Declare Free(*regExEngine.RegExEngineStruc)
  
  ; Creates a new RegEx engine and assigns an existing DFA stored in external
  ; memory to the RegEx engine. After that the RegEx engine is directly ready
  ; to use; no call of `Init()`, `AddNfa()` or `CreateDfa()` is necessary. On
  ; success the pointer to `RegExEngineStruc` is returned, otherwise null.
  Declare UseDfaFromMemory(*dfaMemory)
  
  ; Runs the RegEx engine against the string. The function requires the pointer
  ; to the string. The match search will start from the beginning of the string.
  ; If a match is found, the byte length of the match is returned,
  ; otherwise null. If an address to an integer variable was passed in the
  ; optional `*regExId` parameter, the RegEx ID number of the matched RegEx is
  ; written into it. If there are multiple RegExes that match the same string
  ; and have been assigned different RegEx ID numbers, the RegEx ID number of
  ; the last matched RegEx is taken, i.e. the last matched RegEx added with the
  ; `AddNfa()` function.
  Declare Match(*regExEngine.RegExEngineStruc, *string.Unicode, *regExId.Integer = 0)
  
  ; Returns the error messages of the last `AddNfa()` call as a human-readable
  ; string.
  Declare$ GetLastErrorMessages()
  
  ; Exports the created DFA as a binary file. On success `#True` is returned,
  ; otherwise `#False`.
  Declare ExportDfa(*regExEngine.RegExEngineStruc, filePath$)
  
EndDeclareModule

Module RegEx
  
  CompilerIf #PB_Compiler_Debugger
    ; The RegEx engine is quickly very slow with complex RegExes when debugger
    ; mode is enabled.
    DisableDebugger
  CompilerEndIf
  
  IncludeFile "UnicodeTables" + #PS$ + "PredefinedCharacterClasses.pbi"
  IncludeFile "UnicodeTables" + #PS$ + "SimpleCaseUnfolding.pbi"
  
  Structure NfaStruc
    *startState.NfaStateStruc
    *endState.NfaStateStruc
  EndStructure
  
  Structure EClosureStruc
    List *nfaStates.NfaStateStruc()
  EndStructure
  
  Structure CharacterStruc
    StructureUnion
      u.u
      a.a[2]
    EndStructureUnion
  EndStructure
  
  Structure RegExStringStruc
    *startPosition
    *currentPosition.CharacterStruc
  EndStructure
  
  Structure Byte1Struc
    Map byte2.b()
  EndStructure
  
  Global lastErrorMessages$
  
  Declare ParseRegEx(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer)
  
  Procedure CreateNfaState(List nfaPool.NfaStateStruc())
    ProcedureReturn AddElement(nfaPool())
  EndProcedure
  
  Procedure DeleteNfaState(List nfaPool.NfaStateStruc(), *state.NfaStateStruc)
    ChangeCurrentElement(nfaPool(), *state)
    DeleteElement(nfaPool())
  EndProcedure
  
  Procedure CreateNfaSymbol(List nfaPool.NfaStateStruc(), symbol, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = symbol
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = finalStateValue
    
    *resultNfa\startState\nextState1 = *resultNfa\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaConcatenation(List nfaPool.NfaStateStruc(), *nfa1.NfaStruc, *nfa2.NfaStruc)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *nfa1\endState\symbol = *nfa2\startState\symbol
    *nfa1\endState\nextState1 = *nfa2\startState\nextState1
    *nfa1\endState\nextState2 = *nfa2\startState\nextState2
    
    DeleteNfaState(nfaPool(), *nfa2\startState)
    
    *resultNfa\startState = *nfa1\startState
    *resultNfa\endState = *nfa2\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaUnion(List nfaPool.NfaStateStruc(), *nfa1.NfaStruc, *nfa2.NfaStruc, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = #Symbol_Split
    *resultNfa\startState\nextState1 = *nfa1\startState
    *resultNfa\startState\nextState2 = *nfa2\startState
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = finalStateValue
    
    *nfa1\endState\symbol = #Symbol_Move
    *nfa1\endState\nextState1 = *resultNfa\endState
    
    *nfa2\endState\symbol = #Symbol_Move
    *nfa2\endState\nextState1 = *resultNfa\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaZeroOrMore(List nfaPool.NfaStateStruc(), *nfa.NfaStruc, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = #Symbol_Split
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = finalStateValue
    
    *resultNfa\startState\nextState1 = *nfa\startState
    *resultNfa\startState\nextState2 = *resultNfa\endState
    
    *nfa\endState\symbol = #Symbol_Split
    *nfa\endState\nextState1 = *resultNfa\endState
    *nfa\endState\nextState2 = *nfa\startState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaOneOrMore(List nfaPool.NfaStateStruc(), *nfa.NfaStruc, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = #Symbol_Move
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = finalStateValue
    
    *resultNfa\startState\nextState1 = *nfa\startState
    
    *nfa\endState\symbol = #Symbol_Split
    *nfa\endState\nextState1 = *resultNfa\endState
    *nfa\endState\nextState2 = *nfa\startState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaZeroOrOne(List nfaPool.NfaStateStruc(), *nfa.NfaStruc, finalStateValue)
    Protected.NfaStruc *nfa2, *resultNfa
    
    *nfa2 = CreateNfaSymbol(nfaPool(), #Symbol_Move, finalStateValue)
    If *nfa2 = 0
      ProcedureReturn 0
    EndIf
    *resultNfa = CreateNfaUnion(nfaPool(), *nfa, *nfa2, finalStateValue)
    FreeStructure(*nfa2)
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure GetCurrentCharacterPosition(*regExString.RegExStringStruc)
    Protected position = *regExString\currentPosition
    position - *regExString\startPosition
    position >> 1 ; Fast division by 2
    ProcedureReturn position + 1
  EndProcedure
  
  ; Creates from the byte tree the corresponding NFA construction
  Procedure CreateNfaByteSequences(List nfaPool.NfaStateStruc(), Map byte1.Byte1Struc(), finalStateValue, isNegated = #False)
    Protected.NfaStruc *nfa1, *nfa2, *base
    Protected byte1, byte2
    
    If Not isNegated
      ResetMap(byte1())
      While NextMapElement(byte1())
        *nfa1 = CreateNfaSymbol(nfaPool(), Asc(MapKey(byte1())), finalStateValue)
        
        ResetMap(byte1()\byte2())
        NextMapElement(byte1()\byte2())
        *nfa2 = CreateNfaSymbol(nfaPool(), Asc(MapKey(byte1()\byte2())), finalStateValue)
        While NextMapElement(byte1()\byte2())
          *nfa2 = CreateNfaUnion(nfaPool(), *nfa2, CreateNfaSymbol(nfaPool(), Asc(MapKey(byte1()\byte2())), finalStateValue),
                                 finalStateValue)
        Wend
        
        If *base
          *base = CreateNfaUnion(nfaPool(), *base, CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2), finalStateValue)
        Else
          *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
        EndIf
      Wend
    Else
      For byte1 = 0 To 255
        *nfa1 = 0
        *nfa2 = 0
        For byte2 = 0 To 255
          
          If byte1 = 0 And byte2 = 0
            Continue ; Skip null character
          EndIf
          
          If FindMapElement(byte1(), Chr(byte1)) And FindMapElement(byte1()\byte2(), Chr(byte2))
            Continue ; Skip negated characters
          EndIf
          
          If *nfa1 = 0
            *nfa1 = CreateNfaSymbol(nfaPool(), byte1, finalStateValue)
          EndIf
          
          If *nfa2
            *nfa2 = CreateNfaUnion(nfaPool(), *nfa2, CreateNfaSymbol(nfaPool(), byte2, finalStateValue), finalStateValue)
          Else
            *nfa2 = CreateNfaSymbol(nfaPool(), byte2, finalStateValue)
          EndIf
        Next
        
        If *base
          *base = CreateNfaUnion(nfaPool(), *base, CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2), finalStateValue)
        Else
          *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
        EndIf
      Next
    EndIf
    
    ProcedureReturn *base
  EndProcedure
  
  ; Adds the byte sequence to the byte tree
  Procedure AddByteSequence(Map byte1.Byte1Struc(), startValue, endValue, *regExModes.Integer = 0)
    Protected i
    Protected.CharacterStruc char
    
    For i = startValue To endValue
      char\u = i
      byte1(Chr(char\a[0]))\byte2(Chr(char\a[1]))
      If *regExModes And *regExModes\i & #RegExMode_NoCase
        If FindMapElement(caseUnfold(), Chr(char\u))
          ForEach caseUnfold()\chars()
            char\u = caseUnfold()\chars()
            byte1(Chr(char\a[0]))\byte2(Chr(char\a[1]))
          Next
        EndIf
      EndIf
    Next
  EndProcedure
  
  ; Adds the predefined byte sequences to the byte tree
  Procedure AddPredefinedByteSequences(Map byte1.Byte1Struc(), *label)
    Protected offset, startValue, endValue
    
    Repeat
      startValue = PeekU(*label + offset)
      If startValue = 0 ; End of the predefined character class
        Break
      EndIf
      offset + SizeOf(Unicode)
      endValue = PeekU(*label + offset)
      offset + SizeOf(Unicode)
      AddByteSequence(byte1(), startValue, endValue)
    ForEver
  EndProcedure
  
  Procedure DecodeHexCode(*regExString.RegExStringStruc, requiredLength)
    Protected hexCode$
    
    Select requiredLength
      Case 2
        If *regExString\currentPosition\u <> 0
          hexCode$ = Chr(*regExString\currentPosition\u)
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
        If *regExString\currentPosition\u <> 0
          hexCode$ + Chr(*regExString\currentPosition\u)
          *regExString\currentPosition + SizeOf(Unicode)
        Else
          hexCode$ = ""
        EndIf
      Case 4
        If *regExString\currentPosition\u <> 0
          hexCode$ = Chr(*regExString\currentPosition\u)
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
        If *regExString\currentPosition\u <> 0
          hexCode$ + Chr(*regExString\currentPosition\u)
          *regExString\currentPosition + SizeOf(Unicode)
        Else
          hexCode$ = ""
        EndIf
        If *regExString\currentPosition\u <> 0
          hexCode$ + Chr(*regExString\currentPosition\u)
          *regExString\currentPosition + SizeOf(Unicode)
        Else
          hexCode$ = ""
        EndIf
        If *regExString\currentPosition\u <> 0
          hexCode$ + Chr(*regExString\currentPosition\u)
          *regExString\currentPosition + SizeOf(Unicode)
        Else
          hexCode$ = ""
        EndIf
      Default
        hexCode$ = ""
    EndSelect
    
    ProcedureReturn Val("$" + hexCode$)
  EndProcedure
  
  Procedure$ ParseRegExCharacterClassBase(*regExString.RegExStringStruc)
    Protected result$
    
    Select *regExString\currentPosition\u
      Case '\'
        *regExString\currentPosition + SizeOf(Unicode)
        Select *regExString\currentPosition\u
          Case 'r'
            result$ = #CR$
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'n'
            result$ = #LF$
            *regExString\currentPosition + SizeOf(Unicode)
          Case 't'
            result$ = #TAB$
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'f'
            result$ = #FF$
            *regExString\currentPosition + SizeOf(Unicode)
          Case '\', ']', '-'
            result$ = Chr(*regExString\currentPosition\u)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'd', 'D', 's', 'S', 'w', 'W'
            lastErrorMessages$ + "Predefined character classes inside of character classes are not allowed [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            result$ = "" 
          Case 'x'
            *regExString\currentPosition + SizeOf(Unicode)
            result$ = Chr(DecodeHexCode(*regExString, 2))
            If result$ = ""
              lastErrorMessages$ + "Escape sequence is invalid [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
            EndIf
          Case 'u'
            *regExString\currentPosition + SizeOf(Unicode)
            result$ = Chr(DecodeHexCode(*regExString, 4))
            If result$ = ""
              lastErrorMessages$ + "Escape sequence is invalid [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
            EndIf
          Default
            lastErrorMessages$ + "Symbol to be escaped is invalid: '" +
                                 Chr(*regExString\currentPosition\u) + "' [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            result$ = ""
        EndSelect
      Case '['
        lastErrorMessages$ + "Opening square bracket not allowed here [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        result$ = ""
      Case ']'
        lastErrorMessages$ + "Closing square bracket not allowed here [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        result$ = ""
      Case '-'
        lastErrorMessages$ + "Character range is incomplete here [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        result$ = ""
      Default
        result$ = Chr(*regExString\currentPosition\u)
        *regExString\currentPosition + SizeOf(Unicode)
    EndSelect
    
    ProcedureReturn result$
  EndProcedure
  
  Procedure ParseRegExCharacterClass(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer)
    Protected base$, base2$
    Protected base, base2
    Protected.Byte1Struc NewMap byte1()
    Protected isNegated
    
    If *regExString\currentPosition\u = '^'
      *regExString\currentPosition + SizeOf(Unicode)
      isNegated = #True
    EndIf
    
    If *regExString\currentPosition\u = ']'
      lastErrorMessages$ + "Empty classes are not allowed [Pos: " +
                           Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                           #CRLF$
      ProcedureReturn 0
    EndIf
    
    While *regExString\currentPosition\u <> 0 And *regExString\currentPosition\u <> ']'
      base$ = ParseRegExCharacterClassBase(*regExString)
      base = Asc(base$)
      If base = 0
        ProcedureReturn 0
      EndIf
      If *regExString\currentPosition\u = '-'
        *regExString\currentPosition + SizeOf(Unicode)
        base2$ = ParseRegExCharacterClassBase(*regExString)
        base2 = Asc(base2$)
        If base2 = 0
          ProcedureReturn 0
        EndIf
        If base > base2
          lastErrorMessages$ + "Range out of order (`[z-a]` must be `[a-z]`, for example) [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          ProcedureReturn 0
        EndIf
        AddByteSequence(byte1(), base, base2, *regExModes)
      Else
        AddByteSequence(byte1(), base, base, *regExModes)
      EndIf
    Wend
    
    If *regExString\currentPosition\u <> ']'
      lastErrorMessages$ + "Missing closing square bracket [Pos: " +
                           Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                           #CRLF$
      ProcedureReturn 0
    EndIf
    
    ProcedureReturn CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue, isNegated)
  EndProcedure
  
  Procedure ParseRegExModes(*regExString.RegExStringStruc, *regExModes.Integer)
    Protected oldPosition = *regExString\currentPosition
    
    Repeat
      If *regExString\currentPosition\u <> '('
        Break
      EndIf
      *regExString\currentPosition + SizeOf(Unicode)
      If *regExString\currentPosition\u <> '?'
        *regExString\currentPosition = oldPosition
        Break
      EndIf
      *regExString\currentPosition + SizeOf(Unicode)
      If *regExString\currentPosition\u = ')'
        lastErrorMessages$ + "Invalid RegEx mode setting [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        ProcedureReturn #False
      EndIf
      Repeat
        Select *regExString\currentPosition\u
          Case 'i'
            *regExString\currentPosition + SizeOf(Unicode)
            *regExModes\i | #RegExMode_NoCase
          Case '-'
            *regExString\currentPosition + SizeOf(Unicode)
            If *regExString\currentPosition\u = ')'
              lastErrorMessages$ + "Invalid RegEx mode setting [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
              ProcedureReturn #False
            EndIf
            Repeat
              Select *regExString\currentPosition\u
                Case 'i'
                  *regExString\currentPosition + SizeOf(Unicode)
                  *regExModes\i & ~#RegExMode_NoCase
                Case ')'
                  *regExString\currentPosition + SizeOf(Unicode)
                  oldPosition = *regExString\currentPosition
                  Break 2
                Default
                  lastErrorMessages$ + "Invalid RegEx mode setting [Pos: " +
                                       Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                       #CRLF$
                  ProcedureReturn #False
              EndSelect
            ForEver
          Case ')'
            *regExString\currentPosition + SizeOf(Unicode)
            oldPosition = *regExString\currentPosition
            Break
          Default
            lastErrorMessages$ + "Invalid RegEx mode setting [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            ProcedureReturn #False
        EndSelect
      ForEver
    ForEver
    
    ProcedureReturn #True
  EndProcedure
  
  Procedure ParseRegExBase(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer)
    Protected.NfaStruc *base, *nfa1, *nfa2
    Protected.Byte1Struc NewMap byte1()
    Protected.CharacterStruc char
    Protected regExModes
    
    If ParseRegExModes(*regExString, *regExModes) = #False
      ProcedureReturn 0
    EndIf
    
    regExModes = *regExModes\i
    
    Select *regExString\currentPosition\u
      Case '('
        *regExString\currentPosition + SizeOf(Unicode)
        *base = ParseRegEx(nfaPool(), *regExString, finalStateValue, @regExModes)
        If *regExString\currentPosition\u <> ')'
          lastErrorMessages$ + "Missing closing round bracket [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          ProcedureReturn 0
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
      Case '['
        *regExString\currentPosition + SizeOf(Unicode)
        *base = ParseRegExCharacterClass(nfaPool(), *regExString, finalStateValue, *regExModes)
        If *base = 0
          ProcedureReturn 0
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
      Case '\'
        *regExString\currentPosition + SizeOf(Unicode)
        Select *regExString\currentPosition\u
          Case 'r'
            *nfa1 = CreateNfaSymbol(nfaPool(), #CR, finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), 0, finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'n'
            *nfa1 = CreateNfaSymbol(nfaPool(), #LF, finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), 0, finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 't'
            *nfa1 = CreateNfaSymbol(nfaPool(), #TAB, finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), 0, finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'f'
            *nfa1 = CreateNfaSymbol(nfaPool(), #FF, finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), 0, finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'd'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?DigitByteSequences)
            *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'D'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?NoDigitByteSequences)
            *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 's'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?WhiteSpaceByteSequences)
            *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'S'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?NoWhiteSpaceByteSequences)
            *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'w'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?WordByteSequences)
            *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'W'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?NoWordByteSequences)
            *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'x'
            *regExString\currentPosition + SizeOf(Unicode)
            char\u = DecodeHexCode(*regExString, 2)
            If char\u = 0
              lastErrorMessages$ + "Escape sequence is invalid [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
              ProcedureReturn 0
            EndIf
            *nfa1 = CreateNfaSymbol(nfaPool(), char\a[0], finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), char\a[1], finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            If *regExModes\i & #RegExMode_NoCase
              If FindMapElement(caseUnfold(), Chr(char\u))
                ForEach caseUnfold()\chars()
                  char\u = caseUnfold()\chars()
                  *nfa1 = CreateNfaSymbol(nfaPool(), char\a[0], finalStateValue)
                  *nfa2 = CreateNfaSymbol(nfaPool(), char\a[1], finalStateValue)
                  *base = CreateNfaUnion(nfaPool(), *base, CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2), finalStateValue)
                Next
              EndIf
            EndIf
          Case 'u'
            *regExString\currentPosition + SizeOf(Unicode)
            char\u = DecodeHexCode(*regExString, 4)
            If char\u = 0
              lastErrorMessages$ + "Escape sequence is invalid [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
              ProcedureReturn 0
            EndIf
            *nfa1 = CreateNfaSymbol(nfaPool(), char\a[0], finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), char\a[1], finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            If *regExModes\i & #RegExMode_NoCase
              If FindMapElement(caseUnfold(), Chr(char\u))
                ForEach caseUnfold()\chars()
                  char\u = caseUnfold()\chars()
                  *nfa1 = CreateNfaSymbol(nfaPool(), char\a[0], finalStateValue)
                  *nfa2 = CreateNfaSymbol(nfaPool(), char\a[1], finalStateValue)
                  *base = CreateNfaUnion(nfaPool(), *base, CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2), finalStateValue)
                Next
              EndIf
            EndIf
          Case '*', '+', '?', '|', '(', ')', '\', '.', '[', ']'
            *nfa1 = CreateNfaSymbol(nfaPool(), *regExString\currentPosition\a[0], finalStateValue)
            *nfa2 = CreateNfaSymbol(nfaPool(), *regExString\currentPosition\a[1], finalStateValue)
            *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Default
            lastErrorMessages$ + "Symbol to be escaped is invalid: '" +
                                 Chr(*regExString\currentPosition\u) + "' [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            ProcedureReturn 0
        EndSelect
      Case '.'
        ClearMap(byte1())
        AddPredefinedByteSequences(byte1(), ?DotByteSequences)
        *base = CreateNfaByteSequences(nfaPool(), byte1(), finalStateValue)
        *regExString\currentPosition + SizeOf(Unicode)
      Case '*', '+', '?', '|'
        lastErrorMessages$ + "Symbol not allowed here: '" +
                             Chr(*regExString\currentPosition\u) + "' [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        ProcedureReturn 0
      Case ''
        lastErrorMessages$ + "Empty RegEx not allowed [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        ProcedureReturn 0
      Case ')'
        lastErrorMessages$ + "Empty groups are not allowed [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        ProcedureReturn 0
      Case ']'
        lastErrorMessages$ + "Missing opening square bracket [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        ProcedureReturn 0
      Default
        char\u = *regExString\currentPosition\u
        *nfa1 = CreateNfaSymbol(nfaPool(), char\a[0], finalStateValue)
        *nfa2 = CreateNfaSymbol(nfaPool(), char\a[1], finalStateValue)
        *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
        If *regExModes\i & #RegExMode_NoCase
          If FindMapElement(caseUnfold(), Chr(char\u))
            ForEach caseUnfold()\chars()
              char\u = caseUnfold()\chars()
              *nfa1 = CreateNfaSymbol(nfaPool(), char\a[0], finalStateValue)
              *nfa2 = CreateNfaSymbol(nfaPool(), char\a[1], finalStateValue)
              *base = CreateNfaUnion(nfaPool(), *base, CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2), finalStateValue)
            Next
          EndIf
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
    EndSelect
    
    If ParseRegExModes(*regExString, *regExModes) = #False
      ProcedureReturn 0
    EndIf
    
    ProcedureReturn *base
  EndProcedure
  
  Procedure ParseRegExFactor(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer)
    Protected.NfaStruc *base = ParseRegExBase(nfaPool(), *regExString, finalStateValue, *regExModes)
    Protected.NfaStruc *factor
    
    If *base = 0
      ProcedureReturn 0
    EndIf
    
    Select *regExString\currentPosition\u
      Case '*'
        *regExString\currentPosition + SizeOf(Unicode)
        *factor = CreateNfaZeroOrMore(nfaPool(), *base, finalStateValue)
        FreeStructure(*base)
      Case '+'
        *regExString\currentPosition + SizeOf(Unicode)
        *factor = CreateNfaOneOrMore(nfaPool(), *base, finalStateValue)
        FreeStructure(*base)
      Case '?'
        *regExString\currentPosition + SizeOf(Unicode)
        *factor = CreateNfaZeroOrOne(nfaPool(), *base, finalStateValue)
        FreeStructure(*base)
      Default
        *factor = *base
    EndSelect
    
    ProcedureReturn *factor
  EndProcedure
  
  Procedure ParseRegExTerm(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer)
    Protected.NfaStruc *factor, *newFactor, *nextFactor
    
    *factor = ParseRegExFactor(nfaPool(), *regExString, finalStateValue, *regExModes)
    
    If *factor = 0
      ProcedureReturn 0
    EndIf
    
    While *regExString\currentPosition\u <> 0 And *regExString\currentPosition\u <> ')' And
          *regExString\currentPosition\u <> '|'
      
      *nextFactor = ParseRegExFactor(nfaPool(), *regExString, finalStateValue, *regExModes)
      
      If *nextFactor = 0
        ProcedureReturn 0
      EndIf
      
      *newFactor = CreateNfaConcatenation(nfaPool(), *factor, *nextFactor)
      FreeStructure(*factor)
      FreeStructure(*nextFactor)
      *factor = *newFactor
    Wend
    
    ProcedureReturn *factor
  EndProcedure
  
  Procedure ParseRegEx(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer)
    Protected.NfaStruc *term = ParseRegExTerm(nfaPool(), *regExString, finalStateValue, *regExModes)
    Protected.NfaStruc *regEx, *union
    
    If *term And *regExString\currentPosition\u = '|'
      *regExString\currentPosition + SizeOf(Unicode)
      *regEx = ParseRegEx(nfaPool(), *regExString, finalStateValue, *regExModes)
      If *regEx
        *union = CreateNfaUnion(nfaPool(), *term, *regEx, finalStateValue)
      Else
        *union = 0
      EndIf
      FreeStructure(*term)
      FreeStructure(*regEx)
      ProcedureReturn *union
    Else
      ProcedureReturn *term
    EndIf
  EndProcedure
  
  Procedure Init()
    Protected.RegExEngineStruc *regExEngine
    
    *regExEngine = AllocateStructure(RegExEngineStruc)
    
    ProcedureReturn *regExEngine
  EndProcedure
  
  Procedure AddNfa(*regExEngine.RegExEngineStruc, regExString$, regExId = 0, regExModes = 0)
    Protected.NfaStruc *resultNfa
    Protected.RegExStringStruc *regExString
    
    lastErrorMessages$ = ""
    
    If regExString$ = ""
      lastErrorMessages$ + "Empty RegEx not allowed" + #CRLF$
      ProcedureReturn #False
    EndIf
    
    *regExString = AllocateStructure(RegExStringStruc)
    If *regExString
      *regExString\startPosition = @regExString$
      *regExString\currentPosition = @regExString$
    Else
      ProcedureReturn #False
    EndIf
    
    If AddElement(*regExEngine\nfaPools())
      *resultNfa = ParseRegEx(*regExEngine\nfaPools()\nfaStates(), *regExString, #Symbol_Final + regExId, @regExModes)
      If *resultNfa
        If *regExString\currentPosition\u <> 0
          ; If the RegEx string could not be parsed completely, there are syntax
          ; errors
          lastErrorMessages$ + "Missing opening round bracket [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          DeleteElement(*regExEngine\nfaPools())
          FreeStructure(*regExString)
          ProcedureReturn #False
        EndIf
        *regExEngine\nfaPools()\initialNfaState = *resultNfa\startState
      Else
        If *regExString\currentPosition\u = ')'
          ; If the RegEx string could not be parsed completely, there are syntax
          ; errors
          lastErrorMessages$ + "Missing opening round bracket [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
        EndIf
        DeleteElement(*regExEngine\nfaPools())
        FreeStructure(*regExString)
        ProcedureReturn #False
      EndIf
    EndIf
    
    FreeStructure(*regExString)
    ProcedureReturn #True
  EndProcedure
  
  ; Follows the epsilon-move states and adds the target states to the list.
  ; Used for the subset construction (NFA -> DFA conversion).
  Procedure AddState(*state.NfaStateStruc, List *states.NfaStateStruc())
    If *state\symbol = #Symbol_Split
      AddState(*state\nextState1, *states())
      AddState(*state\nextState2, *states())
    ElseIf *state\symbol = #Symbol_Move
      AddState(*state\nextState1, *states())
    Else
      
      ; Required to prevent endless recursion
      ForEach *states()
        If *states() = *state
          ProcedureReturn
        EndIf
      Next
      
      AddElement(*states())
      *states() = *state
    EndIf
  EndProcedure
  
  ; Searches the epsilon closures for a set of NFA states and returns the
  ; position of the set. The position number and the DFA state number are
  ; identical.
  ; Used for the subset construction (NFA -> DFA conversion).
  Procedure FindStatesSet(Array eClosures.EClosureStruc(1), List *states.NfaStateStruc())
    Protected sizeOfArray, dfaState, countOfStates, isFound, result
    
    sizeOfArray = ArraySize(eClosures())
    countOfStates = ListSize(*states())
    
    ; dfaState '0' is the dead state, so it will be skipped.
    
    For dfaState = 1 To sizeOfArray
      
      isFound = #True
      
      If ListSize(eClosures(dfaState)\nfaStates()) <> countOfStates
        Continue
      EndIf
      
      ResetList(*states())
      ResetList(eClosures(dfaState)\nfaStates())
      
      While NextElement(*states()) And NextElement(eClosures(dfaState)\nfaStates())
        If eClosures(dfaState)\nfaStates() <> *states()
          isFound = #False
          Break
        EndIf
      Wend
      
      If isFound
        result = dfaState
        Break
      EndIf
    Next
    
    ProcedureReturn result
  EndProcedure
  
  Procedure CreateDfa(*regExEngine.RegExEngineStruc, clearNfa = #True)
    Protected.EClosureStruc Dim eClosures(1), NewMap symbols()
    Protected.NfaStateStruc *state
    Protected sizeOfArray, dfaState, result
    Protected *newMemory
    
    If *regExEngine\isUseDfaFromMemory = #False And *regExEngine\dfaStatesPool
      FreeMemory(*regExEngine\dfaStatesPool)
    EndIf
    
    *regExEngine\dfaStatesPool = AllocateMemory(SizeOf(DfaStateStruc) << 1)
    *regExEngine\isUseDfaFromMemory = #False
    If *regExEngine\dfaStatesPool = 0
      ProcedureReturn #False
    EndIf
    
    dfaState = 1
    
    ; dfaState '0' is the dead state, so it will be skipped.
    ; eClosures(0) is then always unused, but it is easier that way.
    
    ForEach *regExEngine\nfaPools()
      AddState(*regExEngine\nfaPools()\initialNfaState, eClosures(dfaState)\nfaStates())
    Next
    
    For dfaState = 1 To ArraySize(eClosures())
      
      ClearMap(symbols())
      
      ForEach eClosures(dfaState)\nfaStates()
        *state = eClosures(dfaState)\nfaStates()
        If *state\symbol => #Symbol_Final
          *regExEngine\dfaStatesPool\states[dfaState]\isFinalState = *state\symbol
        Else
          AddState(*state\nextState1, symbols(Chr(*state\symbol))\nfaStates())
        EndIf
      Next
      
      ForEach symbols()
        result = FindStatesSet(eClosures(), symbols()\nfaStates())
        If result
          *regExEngine\dfaStatesPool\states[dfaState]\symbols[Asc(MapKey(symbols()))] = result
        Else
          sizeOfArray = ArraySize(eClosures())
          ReDim eClosures(sizeOfArray + 1)
          *newMemory = ReAllocateMemory(*regExEngine\dfaStatesPool,
                                        MemorySize(*regExEngine\dfaStatesPool) +
                                        SizeOf(DfaStateStruc))
          If *newMemory
            *regExEngine\dfaStatesPool = *newMemory
          Else
            FreeMemory(*regExEngine\dfaStatesPool)
            *regExEngine\dfaStatesPool = 0
            ProcedureReturn #False
          EndIf
          CopyList(symbols()\nfaStates(), eClosures(sizeOfArray + 1)\nfaStates())
          *regExEngine\dfaStatesPool\states[dfaState]\symbols[Asc(MapKey(symbols()))] = sizeOfArray + 1
        EndIf
      Next
      
    Next
    
    If clearNfa
      ClearList(*regExEngine\nfaPools())
    EndIf
    
    ProcedureReturn #True
  EndProcedure
  
  Procedure Free(*regExEngine.RegExEngineStruc)
    If *regExEngine\isUseDfaFromMemory = #False And *regExEngine\dfaStatesPool
      FreeMemory(*regExEngine\dfaStatesPool)
    EndIf
    FreeStructure(*regExEngine)
  EndProcedure
  
  Procedure UseDfaFromMemory(*dfaMemory)
    Protected.RegExEngineStruc *regExEngine
    
    *regExEngine = AllocateStructure(RegExEngineStruc)
    If *regExEngine
      *regExEngine\dfaStatesPool = *dfaMemory
      *regExEngine\isUseDfaFromMemory = #True
    EndIf
    
    ProcedureReturn *regExEngine
  EndProcedure
  
  Procedure NfaMatch(*regExEngine.RegExEngineStruc, *string.Ascii, *regExId.Integer)
    Protected.NfaStateStruc *state
    Protected.NfaStateStruc NewList *currentStates(), NewList *nextStates()
    Protected *stringStartPos
    Protected lastFinalStateMatchLength
    
    *stringStartPos = *string
    
    ForEach *regExEngine\nfaPools()
      AddState(*regExEngine\nfaPools()\initialNfaState, *currentStates())
    Next
    
    Repeat
      ForEach *currentStates()
        *state = *currentStates()
        If *state\symbol = *string\a
          AddState(*state\nextState1, *nextStates())
        ElseIf *state\symbol => #Symbol_Final
          lastFinalStateMatchLength = *string - *stringStartPos
          If *regExId
            *regExId\i = *state\symbol - #Symbol_Final
          EndIf
        EndIf
      Next
      
      If ListSize(*nextStates()) = 0
        Break
      EndIf
      
      ClearList(*currentStates())
      MergeLists(*nextStates(), *currentStates())
      
      *string + SizeOf(Ascii)
    ForEver
    
    ProcedureReturn lastFinalStateMatchLength
  EndProcedure
  
  Procedure DfaMatch(*regExEngine.RegExEngineStruc, *string.Ascii, *regExId.Integer)
    Protected dfaState, lastFinalStateMatchLength
    Protected *stringStartPos
    
    *stringStartPos = *string
    dfaState = 1
    
    ; dfaState '0' is the dead state, so it will be skipped.
    
    Repeat
      dfaState = *regExEngine\dfaStatesPool\states[dfaState]\symbols[*string\a]
      If dfaState = #State_DfaDeadState
        Break
      EndIf
      
      *string + SizeOf(Ascii)
      
      If *regExEngine\dfaStatesPool\states[dfaState]\isFinalState
        lastFinalStateMatchLength = *string - *stringStartPos
        If *regExId
          *regExId\i = *regExEngine\dfaStatesPool\states[dfaState]\isFinalState - #Symbol_Final
        EndIf
      EndIf
    ForEver
    
    ProcedureReturn lastFinalStateMatchLength
  EndProcedure
  
  Procedure Match(*regExEngine.RegExEngineStruc, *string.Unicode, *regExId.Integer = 0)
    If *regExEngine\dfaStatesPool <> 0
      ProcedureReturn DfaMatch(*regExEngine, *string, *regExId)
    Else
      ProcedureReturn NfaMatch(*regExEngine, *string, *regExId)
    EndIf
  EndProcedure
  
  Procedure$ GetLastErrorMessages()
    ProcedureReturn lastErrorMessages$
  EndProcedure
  
  Procedure ExportDfa(*regExEngine.RegExEngineStruc, filePath$)
    Protected file
    
    file = CreateFile(#PB_Any, filePath$)
    If file = 0
      ProcedureReturn #False
    EndIf
    
    WriteData(file, *regExEngine\dfaStatesPool, MemorySize(*regExEngine\dfaStatesPool))
    CloseFile(file)
    ProcedureReturn #True
  EndProcedure
  
  CompilerIf #PB_Compiler_Debugger
    EnableDebugger
  CompilerEndIf
  
EndModule
