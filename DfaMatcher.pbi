
DeclareModule DfaMatcher
  
  #State_DfaDeadState = 0 ; Index number of the DFA dead state
  
  Structure DfaStateStruc
    nextState.u[256] ; Index is the symbol (0-255) and the value is the next DFA state
    isFinalState.u   ; Positive number if the DFA state is a final state, otherwise null
  EndStructure
  
  Structure DfaStatesArrayStruc
    states.DfaStateStruc[0] ; Array pointer to the DFA states
  EndStructure
  
  ; Simplifies the return of the match as a string
  Macro GetString(_memoryAddress_, _lengthInBytes_)
    PeekS(_memoryAddress_, (_lengthInBytes_) >> 1)
  EndMacro
  
  ; Runs the DFA against the string. The function requires the pointer to the
  ; string. The match search will start from the beginning of the string. If a
  ; match is found, the byte length of the match is returned, otherwise null.
  ; If an address to an integer variable was passed in the optional `*regExId`
  ; parameter, the RegEx ID number of the matched RegEx is written into it. If
  ; there are multiple RegExes that match the same string and have been
  ; assigned different RegEx ID numbers, the RegEx ID number of the last
  ; matched RegEx is taken, i.e. the last matched RegEx added with the
  ; `AddNfa()` function from the main module.
  Declare Match(*dfaMemory, *string.Unicode, *regExId.Integer = 0)
  
EndDeclareModule

Module DfaMatcher
  
  Procedure Match(*dfaMemory.DfaStatesArrayStruc, *string.Unicode, *regExId.Integer = 0)
    Protected.Ascii *stringPointer
    Protected *stringStartPos
    Protected dfaState, lastFinalStateMatchLength
    
    *stringPointer = *string
    *stringStartPos = *string
    dfaState = 1 ; dfaState '0' is the dead state, so it will be skipped
    
    Repeat
      dfaState = *dfaMemory\states[dfaState]\nextState[*stringPointer\a]
      If dfaState = #State_DfaDeadState
        Break
      EndIf
      
      *stringPointer + SizeOf(Ascii)
      
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
