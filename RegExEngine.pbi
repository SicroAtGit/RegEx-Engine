
DeclareModule RegEx
  
  EnableExplicit
  
  Enumeration NfaSpecialSymbols 256
    #Symbol_Move  ; Used for NFA epsilon moves
    #Symbol_Split ; Used for NFA unions
    #Symbol_Final ; Used for NFA final state
  EndEnumeration
  
  #State_DfaDeadState = 0 ; Index number of the DFA dead state
  
  Structure NfaStateStruc
    symbol.i    ; Symbol (0-255) or special symbol
    *nextState1 ; Pointer to the first next NFA state
    *nextState2 ; Pointer to the second next NFA state
  EndStructure
  
  Structure DfaStateStruc
    symbols.i[256] ; Index is the symbol (0-255) and the value is the next DFA state
    isFinalState.i ; `#True` if the DFA state is a final state, otherwise `#False`
  EndStructure
  
  Structure DfaStatesArrayStruc
    states.DfaStateStruc[0] ; Array pointer to the DFA states
  EndStructure
  
  Structure RegExEngineStruc
    List nfaStatesPool.NfaStateStruc() ; Holds all NFA states
    *initialNfaState                   ; Pointer to the NFA initial state
    *dfaStatesPool.DfaStatesArrayStruc ; Holds all DFA states
  EndStructure
  
  ; Creates a new RegEx engine and returns the pointer to the
  ; `RegExEngineStruc` structure. If an error occurred (RegEx syntax error or
  ; memory could not be allocated) null is returned.
  Declare Create(regExString$)
  
  ; Creates a DFA in the RegEx engine from the NFA created by `Create()`.
  ; `Match()` then always uses the DFA and is much faster.
  ; Because the NFA is no longer used after this, it is cleared by default.
  ; The clearing can be turned off by setting `clearNfa` to `#False`.
  ; On success `#True` is returned, otherwise `#False`.
  Declare CreateDfa(*regExEngine, clearNfa = #True)
  
  ; Frees the memory of the RegEx engine created by the function `Create()`.
  Declare Free(*regExEngine)
  
  ; Frees the memory of the DFA created by the function `CreateDfa()`.
  Declare FreeDfa(*regExEngine)
  
  ; Assigns an existing DFA stored in external memory to the RegEx engine.
  ; After that the RegEx engine is directly ready to use; no call of `Create()`
  ; and `CreateDfa()` is necessary. But the call of `Free()` is still necessary.
  ; On success the pointer to `RegExEngineStruc` is returned, otherwise null.
  Declare UseDfaFromMemory(*dfaMemory)
  
  ; Runs the RegEx engine against the string. The function requires the pointer
  ; to the string, which can be determined with `@variable$` or `@"text"`.
  ; The match search will start from the beginning of the string. If you want
  ; to start from a different position, you have to move the pointer of the
  ; string, e.g. `*string + SizeOf(Character)` to search from the second
  ; character in the string. If a match is found, the character length of the
  ; match is returned, otherwise zero.
  Declare Match(*regExEngine, *string)
  
  ; Returns the error messages of the last `Create()` call as a human-readable
  ; string.
  Declare$ GetLastErrorMessages()
  
  ; Exports the created DFA as a `DataSection` block in a PureBasic include file.
  ; On success `#True` is returned, otherwise `#False`.
  Declare ExportDfa(*regExEngine, filePath$, labelName$ = "dfaTable")
  
EndDeclareModule

Module RegEx
  
  IncludeFile "UnicodeTables" + #PS$ + "PredefinedCharacterClasses.pbi"
  
  Structure NfaStruc
    *startState.NfaStateStruc
    *endState.NfaStateStruc
  EndStructure
  
  Structure EClosureStruc
    List *nfaStates()
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
    Map byte2.i()
  EndStructure
  
  Global lastErrorMessages$
  
  Declare ParseRegEx(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
  
  Procedure CreateNfaState(*regExEngine.RegExEngineStruc)
    ProcedureReturn AddElement(*regExEngine\nfaStatesPool())
  EndProcedure
  
  Procedure DeleteNfaState(*regExEngine.RegExEngineStruc, *state)
    ChangeCurrentElement(*regExEngine\nfaStatesPool(), *state)
    DeleteElement(*regExEngine\nfaStatesPool())
  EndProcedure
  
  Procedure CreateNfaSymbol(*regExEngine.RegExEngineStruc, symbol)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(*regExEngine)
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = symbol
    
    *resultNfa\endState = CreateNfaState(*regExEngine)
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = #Symbol_Final
    
    *resultNfa\startState\nextState1 = *resultNfa\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaConcatenation(*regExEngine.RegExEngineStruc, *nfa1.NfaStruc, *nfa2.NfaStruc)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *nfa1\endState\symbol = *nfa2\startState\symbol
    *nfa1\endState\nextState1 = *nfa2\startState\nextState1
    *nfa1\endState\nextState2 = *nfa2\startState\nextState2
    
    DeleteNfaState(*regExEngine, *nfa2\startState)
    
    *resultNfa\startState = *nfa1\startState
    *resultNfa\endState = *nfa2\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaUnion(*regExEngine.RegExEngineStruc, *nfa1.NfaStruc, *nfa2.NfaStruc)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(*regExEngine)
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = #Symbol_Split
    *resultNfa\startState\nextState1 = *nfa1\startState
    *resultNfa\startState\nextState2 = *nfa2\startState
    
    *resultNfa\endState = CreateNfaState(*regExEngine)
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = #Symbol_Final
    
    *nfa1\endState\symbol = #Symbol_Move
    *nfa1\endState\nextState1 = *resultNfa\endState
    
    *nfa2\endState\symbol = #Symbol_Move
    *nfa2\endState\nextState1 = *resultNfa\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaZeroOrMore(*regExEngine.RegExEngineStruc, *nfa.NfaStruc)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(*regExEngine)
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = #Symbol_Split
    
    *resultNfa\endState = CreateNfaState(*regExEngine)
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = #Symbol_Final
    
    *resultNfa\startState\nextState1 = *nfa\startState
    *resultNfa\startState\nextState2 = *resultNfa\endState
    
    *nfa\endState\symbol = #Symbol_Split
    *nfa\endState\nextState1 = *resultNfa\endState
    *nfa\endState\nextState2 = *nfa\startState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaOneOrMore(*regExEngine.RegExEngineStruc, *nfa.NfaStruc)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(*regExEngine)
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\symbol = #Symbol_Move
    
    *resultNfa\endState = CreateNfaState(*regExEngine)
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\symbol = #Symbol_Final
    
    *resultNfa\startState\nextState1 = *nfa\startState
    
    *nfa\endState\symbol = #Symbol_Split
    *nfa\endState\nextState1 = *resultNfa\endState
    *nfa\endState\nextState2 = *nfa\startState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure CreateNfaZeroOrOne(*regExEngine.RegExEngineStruc, *nfa.NfaStruc)
    Protected *nfa2, *resultNfa
    
    *nfa2 = CreateNfaSymbol(*regExEngine, #Symbol_Move)
    If *nfa2 = 0
      ProcedureReturn 0
    EndIf
    *resultNfa = CreateNfaUnion(*regExEngine, *nfa, *nfa2)
    FreeStructure(*nfa2)
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  Procedure GetCurrentCharacterPosition(*regExString.RegExStringStruc)
    Protected position = *regExString\currentPosition
    position - *regExString\startPosition
    position >> 1 ; Fast division by 2
    ProcedureReturn position + 1
  EndProcedure
  
  Procedure CreateNfaByteSequences(*regExEngine.RegExEngineStruc, Map byte1.Byte1Struc(), isNegated = #False)
    Protected NewMap *nfa1Cache()
    Protected *nfa2, *base
    Protected byte1, byte2
    
    If Not isNegated
      ResetMap(byte1())
      While NextMapElement(byte1())
        
        If Not FindMapElement(*nfa1Cache(), MapKey(byte1()))
          *nfa1Cache(MapKey(byte1())) = CreateNfaSymbol(*regExEngine, Asc(MapKey(byte1())))
        EndIf
        
        ResetMap(byte1()\byte2())
        NextMapElement(byte1()\byte2())
        *nfa2 = CreateNfaSymbol(*regExEngine, Asc(MapKey(byte1()\byte2())))
        While NextMapElement(byte1()\byte2())
          *nfa2 = CreateNfaUnion(*regExEngine, *nfa2,
                                 CreateNfaSymbol(*regExEngine, Asc(MapKey(byte1()\byte2()))))
        Wend
        
        If *base
          *base = CreateNfaUnion(*regExEngine, *base,
                                 CreateNfaConcatenation(*regExEngine, *nfa1Cache(), *nfa2))
        Else
          *base = CreateNfaConcatenation(*regExEngine, *nfa1Cache(), *nfa2)
        EndIf
      Wend
    Else
      For byte1 = 0 To 255
        *nfa2 = 0
        For byte2 = 0 To 255
          
          If byte1 = 0 And byte2 = 0
            Continue ; Skip null character
          EndIf
          
          If FindMapElement(byte1(), Chr(byte1)) And FindMapElement(byte1()\byte2(), Chr(byte2))
            Continue
          EndIf
          
          If Not FindMapElement(*nfa1Cache(), Chr(byte1))
            *nfa1Cache(Chr(byte1)) = CreateNfaSymbol(*regExEngine, byte1)
          EndIf
          
          If *nfa2
            *nfa2 = CreateNfaUnion(*regExEngine, *nfa2,
                                   CreateNfaSymbol(*regExEngine, byte2))
          Else
            *nfa2 = CreateNfaSymbol(*regExEngine, byte2)
          EndIf
        Next
        
        If *base
          *base = CreateNfaUnion(*regExEngine, *base,
                                 CreateNfaConcatenation(*regExEngine, *nfa1Cache(), *nfa2))
        Else
          *base = CreateNfaConcatenation(*regExEngine, *nfa1Cache(), *nfa2)
        EndIf
      Next
    EndIf
    
    ProcedureReturn *base
  EndProcedure
  
  Procedure AddByteSequence(Map byte1.Byte1Struc(), startValue, endValue)
    Protected i
    Protected.CharacterStruc char
    
    For i = startValue To endValue
      char\u = i
      byte1(Chr(char\a[0]))\byte2(Chr(char\a[1]))
    Next
  EndProcedure
  
  Procedure AddPredefinedByteSequences(Map byte1.Byte1Struc(), *label)
    Protected offset, startValue, endValue
    
    Repeat
      startValue = PeekI(*label + offset)
      If startValue = -1
        Break
      EndIf
      offset + SizeOf(Integer)
      endValue = PeekI(*label + offset)
      offset + SizeOf(Integer)
      AddByteSequence(byte1(), startValue, endValue)
    ForEver
  EndProcedure
  
  Procedure$ ParseRegExCharacterClassBase(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
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
          Case 'd', 'D', 's', 'S'
            lastErrorMessages$ + "Predefined character classes inside of character classes are not allowed [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            result$ = "" 
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
  
  Procedure ParseRegExCharacterClass(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
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
      base$ = ParseRegExCharacterClassBase(*regExEngine, *regExString)
      base = Asc(base$)
      If base = 0
        ProcedureReturn 0
      EndIf
      If *regExString\currentPosition\u = '-'
        *regExString\currentPosition + SizeOf(Unicode)
        base2$ = ParseRegExCharacterClassBase(*regExEngine, *regExString)
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
        AddByteSequence(byte1(), base, base2)
      Else
        AddByteSequence(byte1(), base, base)
      EndIf
    Wend
    
    If *regExString\currentPosition\u <> ']'
      lastErrorMessages$ + "Missing closing square bracket [Pos: " +
                           Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                           #CRLF$
      ProcedureReturn 0
    EndIf
    
    ProcedureReturn CreateNfaByteSequences(*regExEngine, byte1(), isNegated)
  EndProcedure
  
  Procedure ParseRegExBase(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
    Protected *base, *nfa1, *nfa2
    Protected.Byte1Struc NewMap byte1()
    
    Select *regExString\currentPosition\u
      Case '('
        *regExString\currentPosition + SizeOf(Unicode)
        *base = ParseRegEx(*regExEngine, *regExString)
        If *regExString\currentPosition\u <> ')'
          lastErrorMessages$ + "Missing closing round bracket [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          ProcedureReturn 0
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
      Case '['
        *regExString\currentPosition + SizeOf(Unicode)
        *base = ParseRegExCharacterClass(*regExEngine, *regExString)
        If *base = 0
          ProcedureReturn 0
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
      Case '\'
        *regExString\currentPosition + SizeOf(Unicode)
        Select *regExString\currentPosition\u
          Case 'r'
            *nfa1 = CreateNfaSymbol(*regExEngine, #CR)
            *nfa2 = CreateNfaSymbol(*regExEngine, 0)
            *base = CreateNfaConcatenation(*regExEngine, *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'n'
            *nfa1 = CreateNfaSymbol(*regExEngine, #LF)
            *nfa2 = CreateNfaSymbol(*regExEngine, 0)
            *base = CreateNfaConcatenation(*regExEngine, *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 't'
            *nfa1 = CreateNfaSymbol(*regExEngine, #TAB)
            *nfa2 = CreateNfaSymbol(*regExEngine, 0)
            *base = CreateNfaConcatenation(*regExEngine, *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'f'
            *nfa1 = CreateNfaSymbol(*regExEngine, #FF)
            *nfa2 = CreateNfaSymbol(*regExEngine, 0)
            *base = CreateNfaConcatenation(*regExEngine, *nfa1, *nfa2)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'd'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?DigitByteSequences)
            *base = CreateNfaByteSequences(*regExEngine, byte1())
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'D'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?NoDigitByteSequences)
            *base = CreateNfaByteSequences(*regExEngine, byte1())
            *regExString\currentPosition + SizeOf(Unicode)
          Case 's'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?WhiteSpaceByteSequences)
            *base = CreateNfaByteSequences(*regExEngine, byte1())
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'S'
            ClearMap(byte1())
            AddPredefinedByteSequences(byte1(), ?NoWhiteSpaceByteSequences)
            *base = CreateNfaByteSequences(*regExEngine, byte1())
            *regExString\currentPosition + SizeOf(Unicode)
          Case '*', '+', '?', '|', '(', ')', '\', '.', '[', ']'
            *nfa1 = CreateNfaSymbol(*regExEngine, *regExString\currentPosition\a[0])
            *nfa2 = CreateNfaSymbol(*regExEngine, *regExString\currentPosition\a[1])
            *base = CreateNfaConcatenation(*regExEngine, *nfa1, *nfa2)
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
        *base = CreateNfaByteSequences(*regExEngine, byte1())
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
        *nfa1 = CreateNfaSymbol(*regExEngine, *regExString\currentPosition\a[0])
        *nfa2 = CreateNfaSymbol(*regExEngine, *regExString\currentPosition\a[1])
        *base = CreateNfaConcatenation(*regExEngine, *nfa1, *nfa2)
        *regExString\currentPosition + SizeOf(Unicode)
    EndSelect
    
    ProcedureReturn *base
  EndProcedure
  
  Procedure ParseRegExFactor(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
    Protected *base = ParseRegExBase(*regExEngine, *regExString)
    Protected *factor
    
    If *base = 0
      ProcedureReturn 0
    EndIf
    
    Select *regExString\currentPosition\u
      Case '*'
        *regExString\currentPosition + SizeOf(Unicode)
        *factor = CreateNfaZeroOrMore(*regExEngine, *base)
        FreeStructure(*base)
      Case '+'
        *regExString\currentPosition + SizeOf(Unicode)
        *factor = CreateNfaOneOrMore(*regExEngine, *base)
        FreeStructure(*base)
      Case '?'
        *regExString\currentPosition + SizeOf(Unicode)
        *factor = CreateNfaZeroOrOne(*regExEngine, *base)
        FreeStructure(*base)
      Default
        *factor = *base
    EndSelect
    
    ProcedureReturn *factor
  EndProcedure
  
  Procedure ParseRegExTerm(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
    Protected *factor, *newFactor, *nextFactor
    
    *factor = ParseRegExFactor(*regExEngine, *regExString)
    
    If *factor = 0
      ProcedureReturn 0
    EndIf
    
    While *regExString\currentPosition\u <> 0 And *regExString\currentPosition\u <> ')' And
          *regExString\currentPosition\u <> '|'
      
      *nextFactor = ParseRegExFactor(*regExEngine, *regExString)
      
      If *nextFactor = 0
        ProcedureReturn 0
      EndIf
      
      *newFactor = CreateNfaConcatenation(*regExEngine, *factor, *nextFactor)
      FreeStructure(*factor)
      FreeStructure(*nextFactor)
      *factor = *newFactor
    Wend
    
    ProcedureReturn *factor
  EndProcedure
  
  Procedure ParseRegEx(*regExEngine.RegExEngineStruc, *regExString.RegExStringStruc)
    Protected *term = ParseRegExTerm(*regExEngine, *regExString)
    Protected *regEx, *union
    
    If *term And *regExString\currentPosition\u = '|'
      *regExString\currentPosition + SizeOf(Unicode)
      *regEx = ParseRegEx(*regExEngine, *regExString)
      If *regEx
        *union = CreateNfaUnion(*regExEngine, *term, *regEx)
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
  
  Procedure Create(regExString$)
    Protected.RegExEngineStruc *regExEngine
    Protected.NfaStruc *resultNfa
    Protected.RegExStringStruc *regExString
    
    lastErrorMessages$ = ""
    
    If regExString$ = ""
      lastErrorMessages$ + "Empty RegEx not allowed" + #CRLF$
      ProcedureReturn 0
    EndIf
    
    *regExString = AllocateStructure(RegExStringStruc)
    If *regExString
      *regExString\startPosition = @regExString$
      *regExString\currentPosition = @regExString$
    Else
      ProcedureReturn 0
    EndIf
    
    *regExEngine = AllocateStructure(RegExEngineStruc)
    If *regExEngine
      *resultNfa = ParseRegEx(*regExEngine, *regExString)
      If *resultNfa
        *regExEngine\initialNfaState = *resultNfa\startState
      Else
        FreeStructure(*regExEngine)
        *regExEngine = 0
      EndIf
    EndIf
    
    If *regExEngine And *regExString\currentPosition\u <> 0
      ; If the RegEx string could not be parsed completely, there are syntax
      ; errors
      lastErrorMessages$ + "Missing opening round bracket [Pos: " +
                           Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                           #CRLF$
      FreeStructure(*regExEngine)
      *regExEngine = 0
    EndIf
    
    FreeStructure(*regExString)
    
    ProcedureReturn *regExEngine
  EndProcedure
  
  Procedure AddState(*state.NfaStateStruc, List *states())
    If *state\symbol = #Symbol_Split
      AddState(*state\nextState1, *states())
      AddState(*state\nextState2, *states())
    ElseIf *state\symbol = #Symbol_Move
      AddState(*state\nextState1, *states())
    Else
      ForEach *states()
        If *states() = *state
          ProcedureReturn
        EndIf
      Next
      AddElement(*states())
      *states() = *state
    EndIf
  EndProcedure
  
  Procedure FindStatesSet(Array eClosures.EClosureStruc(1), List *states())
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
    
    *regExEngine\dfaStatesPool = AllocateMemory(SizeOf(DfaStateStruc) << 1)
    If *regExEngine\dfaStatesPool = 0
      ProcedureReturn #False
    EndIf
    
    dfaState = 1
    
    ; dfaState '0' is the dead state, so it will be skipped.
    ; eClosures(0) is then always unused, but it is easier that way.
    
    AddState(*regExEngine\initialNfaState, eClosures(dfaState)\nfaStates())
    
    For dfaState = 1 To ArraySize(eClosures())
      
      ClearMap(symbols())
      
      ForEach eClosures(dfaState)\nfaStates()
        *state = eClosures(dfaState)\nfaStates()
        Select *state\symbol
          Case #Symbol_Final
            *regExEngine\dfaStatesPool\states[dfaState]\isFinalState = #True
          Default
            AddState(*state\nextState1, symbols(Chr(*state\symbol))\nfaStates())
        EndSelect
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
      *regExEngine\initialNfaState = 0
      ClearList(*regExEngine\nfaStatesPool())
    EndIf
    
    ProcedureReturn #True
  EndProcedure
  
  Procedure Free(*regExEngine.RegExEngineStruc)
    FreeStructure(*regExEngine)
  EndProcedure
  
  Procedure FreeDfa(*regExEngine.RegExEngineStruc)
    FreeMemory(*regExEngine\dfaStatesPool)
  EndProcedure
  
  Procedure UseDfaFromMemory(*dfaMemory)
    Protected.RegExEngineStruc *regExEngine
    
    *regExEngine = AllocateStructure(RegExEngineStruc)
    If *regExEngine
      *regExEngine\dfaStatesPool = *dfaMemory
    EndIf
    
    ProcedureReturn *regExEngine
  EndProcedure
  
  Procedure NfaMatch(*regExEngine.RegExEngineStruc, *string.Ascii)
    Protected.NfaStateStruc *state
    Protected matchLength, lastFinalStateMatchLength
    Protected NewList *currentStates(), NewList *nextStates()
    
    AddState(*regExEngine\initialNfaState, *currentStates())
    
    Repeat
      ForEach *currentStates()
        *state = *currentStates()
        If *state\symbol = *string\a
          AddState(*state\nextState1, *nextStates())
        ElseIf *state\symbol = #Symbol_Final
          lastFinalStateMatchLength = matchLength
        EndIf
      Next
      
      If ListSize(*nextStates()) = 0
        Break
      EndIf
      
      ClearList(*currentStates())
      MergeLists(*nextStates(), *currentStates())
      
      *string + SizeOf(Ascii)
      matchLength + 1
    ForEver
    
    ProcedureReturn lastFinalStateMatchLength >> 1 ; Fast division by 2
  EndProcedure
  
  Procedure DfaMatch(*regExEngine.RegExEngineStruc, *string.Ascii)
    Protected dfaState, matchLength, lastFinalStateMatchLength
    
    dfaState = 1
    
    ; dfaState '0' is the dead state, so it will be skipped.
    
    Repeat
      dfaState = *regExEngine\dfaStatesPool\states[dfaState]\symbols[*string\a]
      If dfaState = #State_DfaDeadState
        Break
      EndIf
      
      matchLength + 1
      *string + SizeOf(Ascii)
      
      If *regExEngine\dfaStatesPool\states[dfaState]\isFinalState
        lastFinalStateMatchLength = matchLength
      EndIf
    ForEver
    
    ProcedureReturn lastFinalStateMatchLength >> 1 ; Fast division by 2
  EndProcedure
  
  Procedure Match(*regExEngine.RegExEngineStruc, *string.Character)
    If *regExEngine\dfaStatesPool <> 0
      ProcedureReturn DfaMatch(*regExEngine, *string)
    Else
      ProcedureReturn NfaMatch(*regExEngine, *string)
    EndIf
  EndProcedure
  
  Procedure$ GetLastErrorMessages()
    ProcedureReturn lastErrorMessages$
  EndProcedure
  
  Procedure ExportDfa(*regExEngine.RegExEngineStruc, filePath$, labelName$ = "dfaTable")
    Protected file, sizeOfArray, i, i2
    
    file = CreateFile(#PB_Any, filePath$)
    If file = 0
      ProcedureReturn #False
    EndIf
    
    WriteStringN(file, "DataSection")
    WriteString(file, Space(2) + labelName$ + ":")
    
    sizeOfArray = MemorySize(*regExEngine\dfaStatesPool) / SizeOf(DfaStateStruc) - 1
    
    For i = 0 To sizeOfArray
      
      For i2 = 0 To 255
        If i2 % 35 = 0
          WriteStringN(file, "")
          WriteString(file, Space(2) + "Data.i ")
        ElseIf i2 <> 0
          WriteString(file, ",")
        EndIf
        WriteString(file, Str(*regExEngine\dfaStatesPool\states[i]\symbols[i2]))
      Next
      
      If *regExEngine\dfaStatesPool\states[i]\isFinalState
        WriteString(file, ",#True")
      Else
        WriteString(file, ",#False")
      EndIf
    Next
    
    WriteStringN(file, "")
    WriteStringN(file, "EndDataSection")
    CloseFile(file)
    ProcedureReturn #True
  EndProcedure
  
EndModule
