
IncludeFile "AvlTree.pbi"

DeclareModule RegEx
  
  EnableExplicit
  
  EnumerationBinary RegExEngineModes
    #RegExEngineMode_SingleByte ; Activates single-byte mode
  EndEnumeration
  
  EnumerationBinary RegExModes
    #RegExMode_NoCase ; Activates case-insensitive mode
    #RegExMode_Ascii  ; Activates ASCII mode
  EndEnumeration
  
  Enumeration NfaStateTypes
    #StateType_EpsilonMove ; Used for NFA epsilon moves
    #StateType_SymbolMove  ; Used for NFA symbol moves
    #StateType_SplitMove   ; Used for NFA unions
    #StateType_Final       ; Used for NFA final state
  EndEnumeration
  
  #State_DfaDeadState = 0 ; Index number of the DFA dead state
  
  Structure ByteRangeStruc
    min.a ; Minimum byte value (0-255)
    max.a ; Maximum byte value (0-255)
  EndStructure
  
  Structure NfaStateStruc
    stateType.u               ; Type of the NFA state (regExId = stateType - #StateType_Final)
    byteRange.ByteRangeStruc  ; A byte range is used as a transition symbol
    *nextState1.NfaStateStruc ; Pointer to the first next NFA state
    *nextState2.NfaStateStruc ; Pointer to the second next NFA state
  EndStructure
  
  Structure DfaStateStruc
    nextState.u[256] ; Index is the symbol (0-255) and the value is the next DFA state
    isFinalState.u   ; Positive number if the DFA state is a final state, otherwise null
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
    regExEngineModes.i
  EndStructure
  
  ; Simplifies extracting the matched string via its memory address and length
  ; info obtained from a `Match()` call.
  Macro GetString(_memoryAddress_, _lengthInBytes_)
    PeekS(_memoryAddress_, (_lengthInBytes_) >> 1)
  EndMacro
  
  ; Creates a new RegEx engine and returns the pointer to the
  ; `RegExEngineStruc` structure. If an error occurred null is returned. The
  ; optional `regExEngineModes` parameter allows defining which RegExEngine
  ; modes should be activated. 
  Declare Init(regExEngineModes = 0)
  
  ; Compiles the RegEx string into an NFA which is added to the NFAs pool
  ; in the RegEx engine. On success `#True` is returned, otherwise `#False`.
  ; A unique number (`0` to `(65535 - #StateType_Final)`) can be passed to
  ; `regExId` to determine later which RegEx has matched. The optional
  ; `regExModes` parameter allows defining which RegEx modes should be
  ; activated at the beginning.
  Declare AddNfa(*regExEngine.RegExEngineStruc, regExString$, regExId = 0, regExModes = 0)
  
  ; Creates a single DFA from the existing NFAs in the RegEx engine.
  ; `Match()` will henceforth always use the DFA, which is much faster.
  ; Because the NFAs are no longer used after this, they are cleared by default;
  ; to preserve them set parameter `clearNfa` to `#False`.
  ; On success `#True` is returned, otherwise `#False`.
  ; If a DFA already exists, the DFA will be freed before creating a new DFA.
  Declare CreateDfa(*regExEngine.RegExEngineStruc, clearNfa = #True)
  
  ; Frees the RegEx engine
  Declare Free(*regExEngine.RegExEngineStruc)
  
  ; Creates a new RegEx engine and assigns an existing DFA stored in external
  ; memory to the RegEx engine. After calling this procedure, the RegEx engine
  ; is immediately ready for use, without requiring to call `Init()`, `AddNfa()`
  ; or `CreateDfa()`.
  ; On success the pointer to `RegExEngineStruc` is returned, otherwise null.
  ; If RegEx engine modes were set during DFA creation, the identical modes
  ; must be set again for this optional parameter `regExEngineModes` so that
  ; the DFA can be processed correctly.
  Declare UseDfaFromMemory(*dfaMemory, regExEngineModes = 0)
  
  ; Runs the RegEx engine against the target string, passed via a pointer.
  ; The match search will start from the beginning of the string. If a match is
  ; found, the byte length of the match is returned, otherwise null.
  ; If the address of an integer variable was passed as the optional `*regExId`
  ; parameter, the RegEx ID number of the matching RegEx is written into it.
  ; If multiple RegExes match the same string, each having been assigned a
  ; different RegEx ID number, the RegEx ID number of the last matching RegEx
  ; will be picked, i.e. the matching RegEx that was last added with the
  ; `AddNfa()` function.
  Declare Match(*regExEngine.RegExEngineStruc, *string.Unicode, *regExId.Integer = 0)
  
  ; Returns the error messages of the last `AddNfa()` call, as a human-readable
  ; string.
  Declare$ GetLastErrorMessages()
  
  ; Exports the created DFA as a binary file. On success `#True` is returned,
  ; otherwise `#False`.
  Declare ExportDfa(*regExEngine.RegExEngineStruc, filePath$)
  
EndDeclareModule

Module RegEx
  
  CompilerIf #PB_Compiler_Debugger
    ; In debug mode the RegEx engine quickly
    ; becomes very slow with complex RegExes.
    DisableDebugger
  CompilerEndIf
  
  IncludeFile "UnicodeTables" + #PS$ + "PredefinedCharacterClasses.pbi"
  IncludeFile "UnicodeTables" + #PS$ + "SimpleCaseUnfolding.pbi"
  
  Structure NfaStruc
    *startState.NfaStateStruc
    *endState.NfaStateStruc
  EndStructure
  
  Structure EClosureStruc
    *nfaStates.AvlTree::AvlTreeStruc
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
  
  Structure ByteRangesStruc
    byte1Range.ByteRangeStruc
    List byte2Ranges.ByteRangeStruc()
  EndStructure
  
  Global lastErrorMessages$
  
  Declare ParseRegEx(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer, regExEngineModes)
  
  ; Returns the pointer to `NfaStateStruc`. On error, null is returned.
  Procedure CreateNfaState(List nfaPool.NfaStateStruc())
    ProcedureReturn AddElement(nfaPool())
  EndProcedure
  
  Procedure DeleteNfaState(List nfaPool.NfaStateStruc(), *state.NfaStateStruc)
    ChangeCurrentElement(nfaPool(), *state)
    DeleteElement(nfaPool())
  EndProcedure
  
  ; Creates a Thompson NFA with a state transition labeled with the symbol range.
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaByteRange(List nfaPool.NfaStateStruc(), minByteValue, maxByteValue, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\stateType = #StateType_SymbolMove
    *resultNfa\startState\byteRange\min = minByteValue
    *resultNfa\startState\byteRange\max = maxByteValue
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\stateType = finalStateValue
    
    *resultNfa\startState\nextState1 = *resultNfa\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  ; Creates a Thompson NFA concatenation.
  ; With the Thompson NFA, there are two ways to do this:
  ; - Connect the two NFAs with an epsilon transition
  ; - End state of the first NFA is replaced by the start state of the second NFA.
  ; Here, the second method is used because it avoids the need for an additional
  ; NFA state.
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaConcatenation(List nfaPool.NfaStateStruc(), *nfa1.NfaStruc, *nfa2.NfaStruc)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *nfa1\endState\stateType = *nfa2\startState\stateType
    *nfa1\endState\byteRange\min = *nfa2\startState\byteRange\min
    *nfa1\endState\byteRange\max = *nfa2\startState\byteRange\max
    *nfa1\endState\nextState1 = *nfa2\startState\nextState1
    *nfa1\endState\nextState2 = *nfa2\startState\nextState2
    
    DeleteNfaState(nfaPool(), *nfa2\startState)
    
    *resultNfa\startState = *nfa1\startState
    *resultNfa\endState = *nfa2\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  ; Creates a Thompson NFA union construction.
  ; Note: In Thompson NFA, a union construction may only connect two states.
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaUnion(List nfaPool.NfaStateStruc(), *nfa1.NfaStruc, *nfa2.NfaStruc, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\stateType = #StateType_SplitMove
    *resultNfa\startState\nextState1 = *nfa1\startState
    *resultNfa\startState\nextState2 = *nfa2\startState
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\stateType = finalStateValue
    
    *nfa1\endState\stateType = #StateType_EpsilonMove
    *nfa1\endState\nextState1 = *resultNfa\endState
    
    *nfa2\endState\stateType = #StateType_EpsilonMove
    *nfa2\endState\nextState1 = *resultNfa\endState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  ; Creates a Thompson NFA "kleene star" construction.
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaZeroOrMore(List nfaPool.NfaStateStruc(), *nfa.NfaStruc, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\stateType = #StateType_SplitMove
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\stateType = finalStateValue
    
    *resultNfa\startState\nextState1 = *nfa\startState
    *resultNfa\startState\nextState2 = *resultNfa\endState
    
    *nfa\endState\stateType = #StateType_SplitMove
    *nfa\endState\nextState1 = *resultNfa\endState
    *nfa\endState\nextState2 = *nfa\startState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  ; This construction is a custom construction and not part of the Thompson NFA
  ; constructions. It reduces required NFA states that one would have if
  ; limited to the Thompson NFA constructions only.
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaOneOrMore(List nfaPool.NfaStateStruc(), *nfa.NfaStruc, finalStateValue)
    Protected.NfaStruc *resultNfa = AllocateStructure(NfaStruc)
    
    If *resultNfa = 0
      ProcedureReturn 0
    EndIf
    
    *resultNfa\startState = CreateNfaState(nfaPool())
    If *resultNfa\startState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\startState\stateType = #StateType_EpsilonMove
    
    *resultNfa\endState = CreateNfaState(nfaPool())
    If *resultNfa\endState = 0
      ProcedureReturn 0
    EndIf
    *resultNfa\endState\stateType = finalStateValue
    
    *resultNfa\startState\nextState1 = *nfa\startState
    
    *nfa\endState\stateType = #StateType_SplitMove
    *nfa\endState\nextState1 = *resultNfa\endState
    *nfa\endState\nextState2 = *nfa\startState
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  ; This construction is a custom construction and not part of the Thompson NFA
  ; constructions.
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaZeroOrOne(List nfaPool.NfaStateStruc(), *nfa.NfaStruc, finalStateValue)
    Protected.NfaStruc *nfa2, *resultNfa
    
    *nfa2 = AllocateStructure(NfaStruc)
    If *nfa2 = 0
      ProcedureReturn 0
    EndIf
    
    *nfa2\startState = CreateNfaState(nfaPool())
    If *nfa2\startState = 0
      ProcedureReturn 0
    EndIf
    *nfa2\startState\stateType = #StateType_EpsilonMove
    
    *nfa2\endState = CreateNfaState(nfaPool())
    If *nfa2\endState = 0
      ProcedureReturn 0
    EndIf
    *nfa2\endState\stateType = finalStateValue
    
    *nfa2\startState\nextState1 = *nfa2\endState
    
    *resultNfa = CreateNfaUnion(nfaPool(), *nfa, *nfa2, finalStateValue)
    FreeStructure(*nfa2)
    
    ProcedureReturn *resultNfa
  EndProcedure
  
  ; Returns the RegEx string position as a number of characters
  Procedure GetCurrentCharacterPosition(*regExString.RegExStringStruc)
    Protected position = *regExString\currentPosition
    position - *regExString\startPosition
    position >> 1 ; Fast division by 2
    ProcedureReturn position + 1
  EndProcedure
  
  ; Creates from the byte tree the corresponding Thompson NFA construction.
  ; Byte ranges are combined into other byte ranges, if possible, in order to
  ; reduce the number of byte ranges and thus the number of NFA states
  ; required. Examples:
  ; - byte ranges `[1-2][1-2]` and `[3-4][1-2]` are combined as `[1-4][1-2]`
  ; - byte ranges `[1-2][1-2]` and `[1-2][3-4]` are combined as `[1-2][1-4]`
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure CreateNfaByteRangeSequences(List nfaPool.NfaStateStruc(), Array byteSequences.b(2), finalStateValue, regExEngineModes, isNegated = #False)
    Protected.NfaStruc *nfa1, *nfa2, *nfa2_new, *nfa3, *base, *base_new
    Protected.ByteRangesStruc NewList byteRanges()
    Protected byte1, byte2, byte2_max, previousByte1, isByte2Found, isIdentical
    Protected *currentElement.ByteRangesStruc
    
    If regExEngineModes & #RegExEngineMode_SingleByte
      byte2_max = 0
    Else
      byte2_max = $FF
    EndIf
    
    previousByte1 = -1
    
    If Not isNegated
      For byte1 = 0 To $FF
        For byte2 = 0 To byte2_max
          
          If byte1 = 0 And byte2 = 0
            Continue ; Skip null character
          EndIf
          
          If byteSequences(byte1, byte2)
            
            ; Avoid duplicate identical byte ranges
            If previousByte1 <> byte1
              If Not AddElement(byteRanges())
                ProcedureReturn 0
              EndIf
              byteRanges()\byte1Range\min = byte1
              byteRanges()\byte1Range\max = byte1
              previousByte1 = byte1
            EndIf
            
            ; Try to merge byte 2 ranges
            If Not (regExEngineModes & #RegExEngineMode_SingleByte)
              isByte2Found = #False
              ForEach byteRanges()\byte2Ranges()
                If byteRanges()\byte2Ranges()\min =< byte2 And byteRanges()\byte2Ranges()\max => byte2
                  isByte2Found = #True
                ElseIf byteRanges()\byte2Ranges()\min - 1 = byte2
                  byteRanges()\byte2Ranges()\min - 1
                  isByte2Found = #True
                ElseIf byteRanges()\byte2Ranges()\max + 1 = byte2
                  byteRanges()\byte2Ranges()\max + 1
                  isByte2Found = #True
                EndIf
              Next
              If Not isByte2Found
                If Not AddElement(byteRanges()\byte2Ranges())
                  ProcedureReturn 0
                EndIf
                byteRanges()\byte2Ranges()\min = byte2
                byteRanges()\byte2Ranges()\max = byte2
              EndIf
            EndIf
            
          EndIf
        Next
      Next
    Else
      For byte1 = 0 To $FF
        For byte2 = 0 To byte2_max
          
          ; Skip null character
          If byte1 = 0 And byte2 = 0
            Continue
          EndIf
          
          If Not byteSequences(byte1, byte2)
            
            ; Avoid duplicate identical byte ranges
            If previousByte1 <> byte1
              If Not AddElement(byteRanges())
                ProcedureReturn 0
              EndIf
              byteRanges()\byte1Range\min = byte1
              byteRanges()\byte1Range\max = byte1
              previousByte1 = byte1
            EndIf
            
            ; Try to merge byte 2 ranges
            If Not (regExEngineModes & #RegExEngineMode_SingleByte)
              isByte2Found = #False
              ForEach byteRanges()\byte2Ranges()
                If byteRanges()\byte2Ranges()\min =< byte2 And byteRanges()\byte2Ranges()\max => byte2
                  isByte2Found = #True
                ElseIf byteRanges()\byte2Ranges()\min - 1 = byte2
                  byteRanges()\byte2Ranges()\min - 1
                  isByte2Found = #True
                ElseIf byteRanges()\byte2Ranges()\max + 1 = byte2
                  byteRanges()\byte2Ranges()\max + 1
                  isByte2Found = #True
                EndIf
              Next
              If Not isByte2Found
                If Not AddElement(byteRanges()\byte2Ranges())
                  ProcedureReturn 0
                EndIf
                byteRanges()\byte2Ranges()\min = byte2
                byteRanges()\byte2Ranges()\max = byte2
              EndIf
            EndIf
            
          EndIf
        Next
      Next
    EndIf
    
    ; Try to merge byte 1 ranges
    ; Note: When merging a byte 1 range, the subordinate byte 2 ranges must
    ; also be identical.
    ForEach byteRanges()
      *currentElement.ByteRangesStruc = @byteRanges()
      PushListPosition(byteRanges())
      ForEach byteRanges()
        If @byteRanges() = *currentElement
          Continue
        EndIf
        If ListSize(byteRanges()\byte2Ranges()) = ListSize(*currentElement\byte2Ranges())
          ResetList(byteRanges()\byte2Ranges())
          ResetList(*currentElement\byte2Ranges())
          isIdentical = #True
          While NextElement(byteRanges()\byte2Ranges()) And NextElement(*currentElement\byte2Ranges())
            If byteRanges()\byte2Ranges()\min <> *currentElement\byte2Ranges()\min Or
               byteRanges()\byte2Ranges()\max <> *currentElement\byte2Ranges()\max
              isIdentical = #False
            EndIf
          Wend
        Else
          isIdentical = #False
        EndIf
        If isIdentical
          If *currentElement\byte1Range\min = byteRanges()\byte1Range\min And *currentElement\byte1Range\max = byteRanges()\byte1Range\max
            DeleteElement(byteRanges())
          ElseIf *currentElement\byte1Range\min - 1 = byteRanges()\byte1Range\min
            *currentElement\byte1Range\min - 1
            DeleteElement(byteRanges())
          ElseIf *currentElement\byte1Range\max + 1 = byteRanges()\byte1Range\max
            *currentElement\byte1Range\max + 1
            DeleteElement(byteRanges())
          EndIf
        EndIf
      Next
      PopListPosition(byteRanges())
    Next
    
    ; Iterate the minimized byte ranges and create the corresponding NFA
    ; construction
    ForEach byteRanges()
      *nfa1 = CreateNfaByteRange(nfaPool(), byteRanges()\byte1Range\min, byteRanges()\byte1Range\max, finalStateValue)
      If regExEngineModes & #RegExEngineMode_SingleByte
        If *base
          *base_new = CreateNfaUnion(nfaPool(), *base, *nfa1, finalStateValue)
          FreeStructure(*base)
          FreeStructure(*nfa1)
          *base = *base_new
        Else
          *base = *nfa1
        EndIf
      Else
        *nfa2 = 0
        ForEach byteRanges()\byte2Ranges()
          If *nfa2
            *nfa3 = CreateNfaByteRange(nfaPool(), byteRanges()\byte2Ranges()\min, byteRanges()\byte2Ranges()\max, finalStateValue)
            *nfa2_new = CreateNfaUnion(nfaPool(), *nfa2, *nfa3, finalStateValue)
            FreeStructure(*nfa2)
            FreeStructure(*nfa3)
            *nfa2 = *nfa2_new
          Else
            *nfa2 = CreateNfaByteRange(nfaPool(), byteRanges()\byte2Ranges()\min, byteRanges()\byte2Ranges()\max, finalStateValue)
          EndIf
        Next
        If *base
          *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
          FreeStructure(*nfa1)
          FreeStructure(*nfa2)
          *nfa2 = *nfa2_new
          *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
          FreeStructure(*base)
          FreeStructure(*nfa2)
          *base = *base_new
        Else
          *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
          FreeStructure(*nfa1)
          FreeStructure(*nfa2)
        EndIf
      EndIf
    Next
    
    ProcedureReturn *base
  EndProcedure
  
  ; Adds the byte sequence to the byte tree
  Procedure AddByteSequence(Array byteSequences.b(2), startValue, endValue, regExEngineModes, *regExModes.Integer = 0)
    Protected i, ii, count
    Protected.CharacterStruc char
    
    For i = startValue To endValue
      char\u = i
      byteSequences(char\a[0], char\a[1]) = #True
      If *regExModes And *regExModes\i & #RegExMode_NoCase
        If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
          Select char\u
            Case 'A' To 'Z'
              char\u = char\u + 32
              byteSequences(char\a[0], char\a[1]) = #True
            Case 'a' To 'z'
              char\u = char\u - 32
              byteSequences(char\a[0], char\a[1]) = #True
          EndSelect
        Else
          If *caseUnfold(char\u)
            count = *caseUnfold(char\u)\charsCount
            For ii = 0 To count
              char\u = *caseUnfold(char\u)\chars[ii]
              byteSequences(char\a[0], char\a[1]) = #True
            Next
          EndIf
        EndIf
      EndIf
    Next
  EndProcedure
  
  ; Adds the predefined byte sequences to the byte tree
  Procedure AddPredefinedByteSequences(Array byteSequences.b(2), *label, regExEngineModes)
    Protected offset, startValue, endValue
    
    Repeat
      startValue = PeekU(*label + offset)
      If startValue = 0 ; End of the predefined character class
        Break
      EndIf
      offset + SizeOf(Unicode)
      endValue = PeekU(*label + offset)
      offset + SizeOf(Unicode)
      AddByteSequence(byteSequences(), startValue, endValue, regExEngineModes)
    ForEver
  EndProcedure
  
  ; Returns the hexadecimal number as an integer. On an error, null is returned.
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
  
  ; Returns the current RegEx character class base symbol as a character.
  ; On an error, a empty string is returned.
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
          Case '\', '[', ']', '-'
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
  
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure ParseRegExCharacterClass(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer, regExEngineModes)
    Protected base$, base2$
    Protected base, base2
    Protected Dim byteSequences.b($FF, $FF)
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
      If regExEngineModes & #RegExEngineMode_SingleByte
        If base > $FF
          lastErrorMessages$ + "Character exceeds valid range in active single-byte " +
                               "mode (max: \xFF) [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          ProcedureReturn 0
        EndIf
      EndIf
      If *regExString\currentPosition\u = '-'
        *regExString\currentPosition + SizeOf(Unicode)
        base2$ = ParseRegExCharacterClassBase(*regExString)
        base2 = Asc(base2$)
        If base2 = 0
          ProcedureReturn 0
        EndIf
        If regExEngineModes & #RegExEngineMode_SingleByte
          If base2 > $FF
            lastErrorMessages$ + "Character exceeds valid range in active single-byte " +
                                 "mode (max: \xFF) [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            ProcedureReturn 0
          EndIf
        EndIf
        If base > base2
          lastErrorMessages$ + "Range out of order (`[z-a]` must be `[a-z]`, for example) [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          ProcedureReturn 0
        EndIf
        AddByteSequence(byteSequences(), base, base2, regExEngineModes, *regExModes)
      Else
        AddByteSequence(byteSequences(), base, base, regExEngineModes, *regExModes)
      EndIf
    Wend
    
    If *regExString\currentPosition\u <> ']'
      lastErrorMessages$ + "Missing closing square bracket [Pos: " +
                           Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                           #CRLF$
      ProcedureReturn 0
    EndIf
    
    ProcedureReturn CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes, isNegated)
  EndProcedure
  
  ; On success `#True` is returned, otherwise `#False`.
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
        *regExString\currentPosition + SizeOf(Unicode)
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
          Case 'a'
            *regExString\currentPosition + SizeOf(Unicode)
            *regExModes\i | #RegExMode_Ascii
          Case '-'
            *regExString\currentPosition + SizeOf(Unicode)
            If *regExString\currentPosition\u = ')'
              lastErrorMessages$ + "Invalid RegEx mode setting [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
              *regExString\currentPosition + SizeOf(Unicode)
              ProcedureReturn #False
            EndIf
            Select *regExString\currentPosition\u
              Case 'i'
                *regExString\currentPosition + SizeOf(Unicode)
                *regExModes\i & ~#RegExMode_NoCase
              Case 'a'
                *regExString\currentPosition + SizeOf(Unicode)
                *regExModes\i & ~#RegExMode_Ascii
              Default
                lastErrorMessages$ + "Invalid RegEx mode setting [Pos: " +
                                     Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                     #CRLF$
                ProcedureReturn #False
            EndSelect
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
  
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure ParseRegExBase(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer, regExEngineModes)
    Protected.NfaStruc *base, *base_new, *nfa1, *nfa2, *nfa2_new
    Protected Dim byteSequences.b($FF, $FF)
    Protected.CharacterStruc char
    Protected regExModes, count, ii, isFound
    
    If ParseRegExModes(*regExString, *regExModes) = #False
      ProcedureReturn 0
    EndIf
    
    regExModes = *regExModes\i
    
    Select *regExString\currentPosition\u
      Case '('
        *regExString\currentPosition + SizeOf(Unicode)
        *base = ParseRegEx(nfaPool(), *regExString, finalStateValue, @regExModes, regExEngineModes)
        If *regExString\currentPosition\u <> ')'
          lastErrorMessages$ + "Missing closing round bracket [Pos: " +
                               Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                               #CRLF$
          ProcedureReturn 0
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
      Case '['
        *regExString\currentPosition + SizeOf(Unicode)
        *base = ParseRegExCharacterClass(nfaPool(), *regExString, finalStateValue, *regExModes, regExEngineModes)
        If *base = 0
          ProcedureReturn 0
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
      Case '\'
        *regExString\currentPosition + SizeOf(Unicode)
        Select *regExString\currentPosition\u
          Case 'r'
            *nfa1 = CreateNfaByteRange(nfaPool(), #CR, #CR, finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), 0, 0, finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'n'
            *nfa1 = CreateNfaByteRange(nfaPool(), #LF, #LF, finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), 0, 0, finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            *regExString\currentPosition + SizeOf(Unicode)
          Case 't'
            *nfa1 = CreateNfaByteRange(nfaPool(), #TAB, #TAB, finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), 0, 0, finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'f'
            *nfa1 = CreateNfaByteRange(nfaPool(), #FF, #FF, finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), 0, 0, finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'd'
            Dim byteSequences.b($FF, $FF)
            If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
              AddPredefinedByteSequences(byteSequences(), ?DigitByteSequences_AsciiMode, regExEngineModes)
            Else
              AddPredefinedByteSequences(byteSequences(), ?DigitByteSequences, regExEngineModes)
            EndIf
            *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'D'
            Dim byteSequences.b($FF, $FF)
            If regExEngineModes & #RegExEngineMode_SingleByte
              AddPredefinedByteSequences(byteSequences(), ?NoDigitByteSequences_SingleByteMode, regExEngineModes)
            ElseIf *regExModes\i & #RegExMode_Ascii
              AddPredefinedByteSequences(byteSequences(), ?NoDigitByteSequences_AsciiMode, regExEngineModes)
            Else
              AddPredefinedByteSequences(byteSequences(), ?NoDigitByteSequences, regExEngineModes)
            EndIf
            *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 's'
            Dim byteSequences.b($FF, $FF)
            If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
              AddPredefinedByteSequences(byteSequences(), ?WhiteSpaceByteSequences_AsciiMode, regExEngineModes)
            Else
              AddPredefinedByteSequences(byteSequences(), ?WhiteSpaceByteSequences, regExEngineModes)
            EndIf
            *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'S'
            Dim byteSequences.b($FF, $FF)
            If regExEngineModes & #RegExEngineMode_SingleByte
              AddPredefinedByteSequences(byteSequences(), ?NoWhiteSpaceByteSequences_SingleByteMode, regExEngineModes)
            ElseIf *regExModes\i & #RegExMode_Ascii
              AddPredefinedByteSequences(byteSequences(), ?NoWhiteSpaceByteSequences_AsciiMode, regExEngineModes)
            Else
              AddPredefinedByteSequences(byteSequences(), ?NoWhiteSpaceByteSequences, regExEngineModes)
            EndIf
            *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'w'
            Dim byteSequences.b($FF, $FF)
            If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
              AddPredefinedByteSequences(byteSequences(), ?WordByteSequences_AsciiMode, regExEngineModes)
            Else
              AddPredefinedByteSequences(byteSequences(), ?WordByteSequences, regExEngineModes)
            EndIf
            *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
            *regExString\currentPosition + SizeOf(Unicode)
          Case 'W'
            Dim byteSequences.b($FF, $FF)
            If regExEngineModes & #RegExEngineMode_SingleByte
              AddPredefinedByteSequences(byteSequences(), ?NoWordByteSequences_SingleByteMode, regExEngineModes)
            ElseIf *regExModes\i & #RegExMode_Ascii
              AddPredefinedByteSequences(byteSequences(), ?NoWordByteSequences_AsciiMode, regExEngineModes)
            Else
              AddPredefinedByteSequences(byteSequences(), ?NoWordByteSequences, regExEngineModes)
            EndIf
            *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
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
            *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            If *regExModes\i & #RegExMode_NoCase
              If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
                isFound = #False
                Select char\u
                  Case 'A' To 'Z'
                    char\u = char\u + 32
                    isFound = #True
                  Case 'a' To 'z'
                    char\u = char\u - 32
                    isFound = #True
                EndSelect
                If isFound
                  *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
                  If regExEngineModes & #RegExEngineMode_SingleByte
                    *nfa2 = *nfa1
                  Else
                    *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
                    *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
                    FreeStructure(*nfa1)
                    FreeStructure(*nfa2)
                    *nfa2 = *nfa2_new
                  EndIf
                  *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
                  FreeStructure(*base)
                  FreeStructure(*nfa2)
                  *base = *base_new
                EndIf
              Else
                If *caseUnfold(char\u)
                  count = *caseUnfold(char\u)\charsCount
                  For ii = 0 To count
                    char\u = *caseUnfold(char\u)\chars[ii]
                    *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
                    *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
                    *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
                    FreeStructure(*nfa1)
                    FreeStructure(*nfa2)
                    *nfa2 = *nfa2_new
                    *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
                    FreeStructure(*base)
                    FreeStructure(*nfa2)
                    *base = *base_new
                  Next
                EndIf
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
            If regExEngineModes & #RegExEngineMode_SingleByte And char\u > $FF
              lastErrorMessages$ + "Character exceeds valid range in active single-byte " +
                                   "mode (max: \xFF) [Pos: " +
                                   Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                   #CRLF$
              ProcedureReturn 0
            EndIf
            *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            If *regExModes\i & #RegExMode_NoCase
              If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
                isFound = #False
                Select char\u
                  Case 'A' To 'Z'
                    char\u = char\u + 32
                    isFound = #True
                  Case 'a' To 'z'
                    char\u = char\u - 32
                    isFound = #True
                EndSelect
                If isFound
                  *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
                  If regExEngineModes & #RegExEngineMode_SingleByte
                    *nfa2 = *nfa1
                  Else
                    *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
                    *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
                    FreeStructure(*nfa1)
                    FreeStructure(*nfa2)
                    *nfa2 = *nfa2_new
                  EndIf
                  *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
                  FreeStructure(*base)
                  FreeStructure(*nfa2)
                  *base = *base_new
                EndIf
              Else
                If *caseUnfold(char\u)
                  count = *caseUnfold(char\u)\charsCount
                  For ii = 0 To count
                    char\u = *caseUnfold(char\u)\chars[ii]
                    *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
                    *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
                    *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
                    FreeStructure(*nfa1)
                    FreeStructure(*nfa2)
                    *nfa2 = *nfa2_new
                    *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
                    FreeStructure(*base)
                    FreeStructure(*nfa2)
                    *base = *base_new
                  Next
                EndIf
              EndIf
            EndIf
          Case '*', '+', '?', '|', '(', ')', '\', '.', '[', ']'
            *nfa1 = CreateNfaByteRange(nfaPool(), *regExString\currentPosition\a[0], *regExString\currentPosition\a[0],
                                       finalStateValue)
            If regExEngineModes & #RegExEngineMode_SingleByte
              *base = *nfa1
            Else
              *nfa2 = CreateNfaByteRange(nfaPool(), *regExString\currentPosition\a[1], *regExString\currentPosition\a[1],
                                         finalStateValue)
              *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
              FreeStructure(*nfa1)
              FreeStructure(*nfa2)
            EndIf
            *regExString\currentPosition + SizeOf(Unicode)
          Default
            lastErrorMessages$ + "Symbol to be escaped is invalid: '" +
                                 Chr(*regExString\currentPosition\u) + "' [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            ProcedureReturn 0
        EndSelect
      Case '.'
        Dim byteSequences.b($FF, $FF)
        If regExEngineModes & #RegExEngineMode_SingleByte
          AddPredefinedByteSequences(byteSequences(), ?DotByteSequences_SingleByteMode, regExEngineModes)
        Else
          AddPredefinedByteSequences(byteSequences(), ?DotByteSequences, regExEngineModes)
        EndIf
        *base = CreateNfaByteRangeSequences(nfaPool(), byteSequences(), finalStateValue, regExEngineModes)
        *regExString\currentPosition + SizeOf(Unicode)
      Case '*', '+', '?', '|'
        lastErrorMessages$ + "Symbol not allowed here: '" +
                             Chr(*regExString\currentPosition\u) + "' [Pos: " +
                             Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                             #CRLF$
        ProcedureReturn 0
      Case 0
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
        If regExEngineModes & #RegExEngineMode_SingleByte
          If char\u > $FF
            lastErrorMessages$ + "Character exceeds valid range in active single-byte " +
                                 "mode (max: \xFF) [Pos: " +
                                 Str(GetCurrentCharacterPosition(*regExString)) + "]" +
                                 #CRLF$
            ProcedureReturn 0
          EndIf
        EndIf
        *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
        If regExEngineModes & #RegExEngineMode_SingleByte
          *base = *nfa1
        Else
          *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
          *base = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
          FreeStructure(*nfa1)
          FreeStructure(*nfa2)
        EndIf
        If *regExModes\i & #RegExMode_NoCase
          If *regExModes\i & #RegExMode_Ascii Or regExEngineModes & #RegExEngineMode_SingleByte
            isFound = #False
            Select char\u
              Case 'A' To 'Z'
                char\u = char\u + 32
                isFound = #True
              Case 'a' To 'z'
                char\u = char\u - 32
                isFound = #True
            EndSelect
            If isFound
              *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
              If regExEngineModes & #RegExEngineMode_SingleByte
                *nfa2 = *nfa1
              Else
                *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
                *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
                FreeStructure(*nfa1)
                FreeStructure(*nfa2)
                *nfa2 = *nfa2_new
              EndIf
              *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
              FreeStructure(*base)
              FreeStructure(*nfa2)
              *base = *base_new
            EndIf
          Else
            If *caseUnfold(char\u)
              count = *caseUnfold(char\u)\charsCount
              For ii = 0 To count
                char\u = *caseUnfold(char\u)\chars[ii]
                *nfa1 = CreateNfaByteRange(nfaPool(), char\a[0], char\a[0], finalStateValue)
                *nfa2 = CreateNfaByteRange(nfaPool(), char\a[1], char\a[1], finalStateValue)
                *nfa2_new = CreateNfaConcatenation(nfaPool(), *nfa1, *nfa2)
                FreeStructure(*nfa1)
                FreeStructure(*nfa2)
                *nfa2 = *nfa2_new
                *base_new = CreateNfaUnion(nfaPool(), *base, *nfa2, finalStateValue)
                FreeStructure(*base)
                FreeStructure(*nfa2)
                *base = *base_new
              Next
            EndIf
          EndIf
        EndIf
        *regExString\currentPosition + SizeOf(Unicode)
    EndSelect
    
    If ParseRegExModes(*regExString, *regExModes) = #False
      ProcedureReturn 0
    EndIf
    
    ProcedureReturn *base
  EndProcedure
  
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure ParseRegExFactor(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer, regExEngineModes)
    Protected.NfaStruc *base = ParseRegExBase(nfaPool(), *regExString, finalStateValue, *regExModes, regExEngineModes)
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
  
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure ParseRegExTerm(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer, regExEngineModes)
    Protected.NfaStruc *factor, *newFactor, *nextFactor
    
    *factor = ParseRegExFactor(nfaPool(), *regExString, finalStateValue, *regExModes, regExEngineModes)
    
    If *factor = 0
      ProcedureReturn 0
    EndIf
    
    While *regExString\currentPosition\u <> 0 And *regExString\currentPosition\u <> ')' And
          *regExString\currentPosition\u <> '|'
      
      *nextFactor = ParseRegExFactor(nfaPool(), *regExString, finalStateValue, *regExModes, regExEngineModes)
      
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
  
  ; Returns a pointer to a `NfaStruc`. On an error, null is returned.
  Procedure ParseRegEx(List nfaPool.NfaStateStruc(), *regExString.RegExStringStruc, finalStateValue, *regExModes.Integer, regExEngineModes)
    Protected.NfaStruc *term = ParseRegExTerm(nfaPool(), *regExString, finalStateValue, *regExModes, regExEngineModes)
    Protected.NfaStruc *regEx, *union
    
    If *term And *regExString\currentPosition\u = '|'
      *regExString\currentPosition + SizeOf(Unicode)
      *regEx = ParseRegEx(nfaPool(), *regExString, finalStateValue, *regExModes, regExEngineModes)
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
  
  ; Public Function. Description in the module declaration block.
  Procedure Init(regExEngineModes = 0)
    Protected.RegExEngineStruc *regExEngine
    
    *regExEngine = AllocateStructure(RegExEngineStruc)
    If *regExEngine
      *regExEngine\regExEngineModes = regExEngineModes
    EndIf
    
    ProcedureReturn *regExEngine
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure AddNfa(*regExEngine.RegExEngineStruc, regExString$, regExId = 0, regExModes = 0)
    Protected.NfaStruc *resultNfa
    Protected.RegExStringStruc *regExString
    
    If *regExEngine = 0
      ProcedureReturn #False
    EndIf
    
    lastErrorMessages$ = ""
    
    If regExString$ = ""
      lastErrorMessages$ + "Empty RegEx not allowed" + #CRLF$
      ProcedureReturn #False
    EndIf
    
    If regExId > (65535 - #StateType_Final) Or regExId < 0
      lastErrorMessages$ + "RegEx ID number must be in the range from 0 to " + Str(65535 - #StateType_Final) + #CRLF$
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
      *resultNfa = ParseRegEx(*regExEngine\nfaPools()\nfaStates(), *regExString, #StateType_Final + regExId, @regExModes, *regExEngine\regExEngineModes)
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
        FreeStructure(*resultNfa)
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
  Procedure AddState(*state.NfaStateStruc, *states.AvlTree::AvlTreeStruc)
    If *state\stateType = #StateType_SplitMove
      If Not AddState(*state\nextState1, *states)
        ProcedureReturn #False
      EndIf
      AddState(*state\nextState2, *states)
    ElseIf *state\stateType = #StateType_EpsilonMove
      AddState(*state\nextState1, *states)
    Else
      
      ; Required to prevent an endless loop on the following RegExes:
      ; - `x*x*`
      ; - `x*x+`
      ; - `x+x*`
      ; - `x+x+`
      ; `x` can also be a more complex RegEx.
      If AvlTree::Search(*states, *state)
        ProcedureReturn #False
      EndIf
      
      AvlTree::Insert(*states, *state)
    EndIf
    
    ProcedureReturn #True
  EndProcedure
  
  ; Searches the epsilon closures for a set of NFA states and returns the
  ; position of the set. The position number and the DFA state number are
  ; identical.
  ; Used for the subset construction (NFA -> DFA conversion).
  Procedure FindStatesSet(Array eClosures.EClosureStruc(1), *states.AvlTree::AvlTreeStruc)
    Protected.AvlTree::AvlNodeStruc *node
    Protected sizeOfArray, dfaState, countOfStates, isFound, result
    
    sizeOfArray = ArraySize(eClosures())
    countOfStates = *states\itemsCount
    
    ; dfaState '0' is the dead state, so it will be skipped.
    
    For dfaState = 1 To sizeOfArray
      
      isFound = #True
      
      If eClosures(dfaState)\nfaStates\itemsCount <> countOfStates
        Continue
      EndIf
      
      AvlTree::ResetTree(eClosures(dfaState)\nfaStates)
      
      *node = AvlTree::NextNode(eClosures(dfaState)\nfaStates)
      While *node
        If AvlTree::Search(*states, *node\key) = 0
          isFound = #False
          Break
        EndIf
        *node = AvlTree::NextNode(eClosures(dfaState)\nfaStates)
      Wend
      
      If isFound
        result = dfaState
        Break
      EndIf
    Next
    
    ProcedureReturn result
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure CreateDfa(*regExEngine.RegExEngineStruc, clearNfa = #True)
    Protected.EClosureStruc Dim eClosures(1), NewMap symbols()
    Protected.NfaStateStruc *state
    Protected.AvlTree::AvlNodeStruc *node
    Protected sizeOfArray, dfaState, result, symbol
    Protected *newMemory
    
    If *regExEngine = 0
      ProcedureReturn #False
    EndIf
    
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
    
    eClosures(dfaState)\nfaStates = AvlTree::Init()
    
    ForEach *regExEngine\nfaPools()
      AddState(*regExEngine\nfaPools()\initialNfaState, eClosures(dfaState)\nfaStates)
    Next
    
    For dfaState = 1 To ArraySize(eClosures())
      
      ForEach symbols()
        AvlTree::Free(symbols()\nfaStates)
      Next
      ClearMap(symbols())
      
      AvlTree::ResetTree(eClosures(dfaState)\nfaStates)
      
      *node = AvlTree::NextNode(eClosures(dfaState)\nfaStates)
      While *node
        *state = *node\key
        If *state\stateType => #StateType_Final
          *regExEngine\dfaStatesPool\states[dfaState]\isFinalState = *state\stateType - #StateType_Final + 1
        Else
          For symbol = *state\byteRange\min To *state\byteRange\max
            If symbols(Chr(symbol))\nfaStates = 0
              symbols(Chr(symbol))\nfaStates = AvlTree::Init()
            EndIf
            AddState(*state\nextState1, symbols(Chr(symbol))\nfaStates)
          Next
        EndIf
        *node = AvlTree::NextNode(eClosures(dfaState)\nfaStates)
      Wend
      
      ForEach symbols()
        result = FindStatesSet(eClosures(), symbols()\nfaStates)
        If result
          *regExEngine\dfaStatesPool\states[dfaState]\nextState[Asc(MapKey(symbols()))] = result
        Else
          sizeOfArray = ArraySize(eClosures())
          ReDim eClosures(sizeOfArray + 1)
          eClosures(sizeOfArray + 1)\nfaStates = AvlTree::Init()
          *newMemory = ReAllocateMemory(*regExEngine\dfaStatesPool,
                                        MemorySize(*regExEngine\dfaStatesPool) +
                                        SizeOf(DfaStateStruc))
          If *newMemory
            *regExEngine\dfaStatesPool = *newMemory
          Else
            FreeMemory(*regExEngine\dfaStatesPool)
            *regExEngine\dfaStatesPool = 0
            For dfaState = 1 To ArraySize(eClosures())
              AvlTree::Free(eClosures(dfaState)\nfaStates)
            Next
            ForEach symbols()
              AvlTree::Free(symbols()\nfaStates)
            Next
            ProcedureReturn #False
          EndIf
          AvlTree::InsertTree(symbols()\nfaStates, eClosures(sizeOfArray + 1)\nfaStates)
          *regExEngine\dfaStatesPool\states[dfaState]\nextState[Asc(MapKey(symbols()))] = sizeOfArray + 1
        EndIf
      Next
      
    Next
    
    If clearNfa
      ClearList(*regExEngine\nfaPools())
    EndIf
    
    For dfaState = 1 To ArraySize(eClosures())
      AvlTree::Free(eClosures(dfaState)\nfaStates)
    Next
    
    ForEach symbols()
      AvlTree::Free(symbols()\nfaStates)
    Next
    
    ProcedureReturn #True
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure Free(*regExEngine.RegExEngineStruc)
    If *regExEngine\isUseDfaFromMemory = #False And *regExEngine\dfaStatesPool
      FreeMemory(*regExEngine\dfaStatesPool)
    EndIf
    FreeStructure(*regExEngine)
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure UseDfaFromMemory(*dfaMemory, regExEngineModes = 0)
    Protected.RegExEngineStruc *regExEngine
    
    If *dfaMemory = 0
      ProcedureReturn 0
    EndIf
    
    *regExEngine = AllocateStructure(RegExEngineStruc)
    If *regExEngine
      *regExEngine\dfaStatesPool = *dfaMemory
      *regExEngine\isUseDfaFromMemory = #True
      *regExEngine\regExEngineModes = regExEngineModes
    EndIf
    
    ProcedureReturn *regExEngine
  EndProcedure
  
  ; Returns the longest match as byte length
  Procedure NfaMatch(*regExEngine.RegExEngineStruc, *string.CharacterStruc, *regExId.Integer)
    Protected.NfaStateStruc *state
    Protected.AvlTree::AvlTreeStruc *currentStates, *nextStates
    Protected.AvlTree::AvlNodeStruc *node
    Protected *stringStartPos
    Protected lastFinalStateMatchLength
    
    *stringStartPos = *string
    
    *currentStates = AvlTree::Init()
    *nextStates = AvlTree::Init()
    
    ForEach *regExEngine\nfaPools()
      AddState(*regExEngine\nfaPools()\initialNfaState, *currentStates)
    Next
    
    Repeat
      AvlTree::ResetTree(*currentStates)
      *node = AvlTree::NextNode(*currentStates)
      While *node
        *state = *node\key
        If *state\stateType = #StateType_SymbolMove
          If *regExEngine\regExEngineModes & #RegExEngineMode_SingleByte
            If *string\u > $FF
              Break
            EndIf
            If *state\byteRange\min =< *string\a[0] And *state\byteRange\max => *string\a[0]
              AddState(*state\nextState1, *nextStates)
            EndIf
          Else
            If *state\byteRange\min =< *string\a[0] And *state\byteRange\max => *string\a[0]
              AddState(*state\nextState1, *nextStates)
            EndIf
          EndIf
        ElseIf *state\stateType => #StateType_Final
          lastFinalStateMatchLength = *string - *stringStartPos
          If *regExId
            *regExId\i = *state\stateType - #StateType_Final
          EndIf
        EndIf
        *node = AvlTree::NextNode(*currentStates)
      Wend
      
      If *nextStates\itemsCount = 0
        Break
      EndIf
      
      AvlTree::Free(*currentStates)
      *currentStates = *nextStates
      *nextStates = AvlTree::Init()
      
      If *regExEngine\regExEngineModes & #RegExEngineMode_SingleByte
        *string + SizeOf(Unicode) ; Skip also the second byte of the UCS-2 character
      Else
        *string + SizeOf(Ascii)
      EndIf
    ForEver
    
    AvlTree::Free(*currentStates)
    AvlTree::Free(*nextStates)
    
    ProcedureReturn lastFinalStateMatchLength
  EndProcedure
  
  ; Returns the longest match as byte length
  Procedure DfaMatch(*regExEngine.RegExEngineStruc, *string.CharacterStruc, *regExId.Integer)
    Protected dfaState, lastFinalStateMatchLength
    Protected *stringStartPos
    
    *stringStartPos = *string
    dfaState = 1
    
    ; dfaState '0' is the dead state, so it will be skipped.
    
    Repeat
      If *regExEngine\regExEngineModes & #RegExEngineMode_SingleByte And *string\u > $FF
        Break
      EndIf
      
      dfaState = *regExEngine\dfaStatesPool\states[dfaState]\nextState[*string\a[0]]
      If dfaState = #State_DfaDeadState
        Break
      EndIf
      
      If *regExEngine\regExEngineModes & #RegExEngineMode_SingleByte
        *string + SizeOf(Unicode) ; Skip also the second byte of the UCS-2 character
      Else
        *string + SizeOf(Ascii)
      EndIf
      
      If *regExEngine\dfaStatesPool\states[dfaState]\isFinalState
        lastFinalStateMatchLength = *string - *stringStartPos
        If *regExId
          *regExId\i = *regExEngine\dfaStatesPool\states[dfaState]\isFinalState - 1
        EndIf
      EndIf
    ForEver
    
    ProcedureReturn lastFinalStateMatchLength
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure Match(*regExEngine.RegExEngineStruc, *string.Unicode, *regExId.Integer = 0)
    If *regExEngine\dfaStatesPool <> 0
      ProcedureReturn DfaMatch(*regExEngine, *string, *regExId)
    Else
      ProcedureReturn NfaMatch(*regExEngine, *string, *regExId)
    EndIf
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure$ GetLastErrorMessages()
    ProcedureReturn lastErrorMessages$
  EndProcedure
  
  ; Public Function. Description in the module declaration block.
  Procedure ExportDfa(*regExEngine.RegExEngineStruc, filePath$)
    Protected file
    
    If *regExEngine = 0 Or *regExEngine\dfaStatesPool = 0
      ProcedureReturn #False
    EndIf
    
    file = CreateFile(#PB_Any, filePath$)
    If file = 0
      ProcedureReturn #False
    EndIf
    
    If Not WriteData(file, *regExEngine\dfaStatesPool, MemorySize(*regExEngine\dfaStatesPool))
      CloseFile(file)
      ProcedureReturn #False
    EndIf
    
    CloseFile(file)
    ProcedureReturn #True
  EndProcedure
  
  CompilerIf #PB_Compiler_Debugger
    EnableDebugger
  CompilerEndIf
  
EndModule
