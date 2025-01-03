
DeclareModule DfaMatcher
  
  EnableExplicit
  
  EnumerationBinary RegExEngineModes
    #RegExEngineMode_SingleByte ; Activates single-byte mode
  EndEnumeration
  
  #State_DfaDeadState = 0 ; Index number of the DFA dead state
  
  Structure DfaStateStruc
    nextState.u[256] ; Index is the symbol (0-255) and the value is the next DFA state
    isFinalState.u   ; Positive number if the DFA state is a final state, otherwise null
                     ; (regExId = isFinalState - 1)
  EndStructure
  
  Structure DfaStatesArrayStruc
    states.DfaStateStruc[0] ; Array pointer to the DFA states
  EndStructure
  
  ; Simplifies extracting the matched string via its memory address and length
  ; info obtained from a `Match()` call.
  Macro GetString(_memoryAddress_, _lengthInBytes_)
    PeekS(_memoryAddress_, (_lengthInBytes_) >> 1)
  EndMacro
  
  ; Runs the DFA against the target string, passed via a pointer.
  ; The match search will start from the beginning of the string. If a match is
  ; found, the byte length of the match is returned, otherwise null.
  ; If the address of an integer variable was passed as the optional `*regExId`
  ; parameter, the RegEx ID number of the matching RegEx is written into it.
  ; If multiple RegExes match the same string, each having been assigned a
  ; different RegEx ID number, the RegEx ID number of the last matching RegEx
  ; will be picked, i.e. the matching RegEx that was last added with the
  ; `AddNfa()` function.  If RegEx engine modes were set during DFA creation,
  ; the identical modes must be set again for this optional parameter
  ; `regExEngineModes` so that the DFA can be processed correctly.
  Declare Match(*dfaMemory, *string.Unicode, *regExId.Integer = 0, regExEngineModes = 0)
  
EndDeclareModule

Module DfaMatcher
  
  Structure CharacterStruc
    StructureUnion
      u.u
      a.a[2]
    EndStructureUnion
  EndStructure
  
  Procedure Match(*dfaMemory.DfaStatesArrayStruc, *string.Unicode, *regExId.Integer = 0, regExEngineModes = 0)
    Protected.CharacterStruc *stringPointer
    Protected *stringStartPos
    Protected dfaState, lastFinalStateMatchLength
    
    *stringPointer = *string
    *stringStartPos = *string
    dfaState = 1 ; dfaState '0' is the dead state, so it will be skipped
    
    Repeat
      If regExEngineModes & #RegExEngineMode_SingleByte And *stringPointer\u > $FF
        Break
      EndIf
      
      dfaState = *dfaMemory\states[dfaState]\nextState[*stringPointer\a[0]]
      If dfaState = #State_DfaDeadState
        Break
      EndIf
      
      If regExEngineModes & #RegExEngineMode_SingleByte
        *stringPointer + SizeOf(Unicode) ; Skip also the second byte of the UCS-2 character
      Else
        *stringPointer + SizeOf(Ascii)
      EndIf
      
      If *dfaMemory\states[dfaState]\isFinalState
        lastFinalStateMatchLength = *stringPointer - *stringStartPos
        If *regExId
          *regExId\i = *dfaMemory\states[dfaState]\isFinalState - 1
        EndIf
      EndIf
    ForEver
    
    ProcedureReturn lastFinalStateMatchLength
  EndProcedure
  
EndModule
