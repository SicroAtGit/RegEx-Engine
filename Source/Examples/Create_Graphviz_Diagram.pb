
EnableExplicit

IncludePath ".."
IncludeFile "RegExEngine.pbi"

Declare CreateNfaGraph(*regExEngine.RegEx::RegExEngineStruc, filePath$)
Declare CreateDfaGraph(*regExEngine.RegEx::RegExEngineStruc, filePath$)
Declare OpenWithStandardProgram(filePath$)

Define *regEx
Define outputFormat$

; =============================================================================

; For this example, the Graphviz tool must be installed on your system.
; https://graphviz.org/download/
; Make sure the option "Add Graphviz to the system PATH" is selected in the
; installer.

;*regEx = RegEx::Init(RegEx::#RegExEngineMode_SingleByte)
*regEx = RegEx::Init()
If *regEx = 0
  Debug "Error: RegEx::Init()"
  End
EndIf

outputFormat$ = "png"
;outputFormat$ = "svg"
#Create_Nfa_Diagram = #True
#Create_Dfa_Diagram = #True

; Without single-byte or ASCII mode enabled, diagrams quickly become very
; complex. For example, the RegEx "\w" is the most complex RegEx character
; class in this RegEx engine and results in an overly complex diagram that is
; unreadable and takes a very long time for Graphviz to generate.

If Not RegEx::AddNfa(*regEx, "(?a)\w", 0)
  Debug "Error: " + RegEx::GetLastErrorMessages()
  RegEx::Free(*regEx)
  End
EndIf

If Not RegEx::AddNfa(*regEx, "(?a)\d", 1)
  Debug "Error: " + RegEx::GetLastErrorMessages()
  RegEx::Free(*regEx)
  End
EndIf

; =============================================================================

CompilerIf #Create_Nfa_Diagram
  If CreateNfaGraph(*regEx, GetTemporaryDirectory() + "nfa.gv")
    If RunProgram("dot", "-O -T" + outputFormat$ + " nfa.gv", GetTemporaryDirectory(), #PB_Program_Wait)
      OpenWithStandardProgram(GetTemporaryDirectory() + "nfa.gv." + outputFormat$)
    Else
      Debug "Error: Execute Graphviz"
    EndIf
  Else
    Debug "Error: Create graph"
  EndIf
CompilerEndIf

CompilerIf #Create_Dfa_Diagram
  If RegEx::CreateDfa(*regEx) And CreateDfaGraph(*regEx, GetTemporaryDirectory() + "dfa.gv")
    If RunProgram("dot", "-O -T" + outputFormat$ + " dfa.gv", GetTemporaryDirectory(), #PB_Program_Wait)
      OpenWithStandardProgram(GetTemporaryDirectory() + "dfa.gv." + outputFormat$)
    Else
      Debug "Error: Execute Graphviz"
    EndIf
  Else
    Debug "Error: Create graph"
  EndIf
CompilerEndIf

RegEx::Free(*regEx)

Procedure CreateNfaGraph(*regExEngine.RegEx::RegExEngineStruc, filePath$)
  Protected file
  
  file = CreateFile(#PB_Any, filePath$)
  If file = 0
    ProcedureReturn #False
  EndIf
  
  WriteStringN(file, "digraph nfa_state_diagram {")
  WriteStringN(file, Space(2) + "rankdir = LR;")
  WriteStringN(file, Space(2) + ~"\"\" [shape = none, fixedsize = true, height = 0, width = 0];")
  WriteStringN(file, Space(2) + "node [shape = circle];")
  
  ForEach *regExEngine\nfaPools()
    WriteStringN(file, Space(2) + ~"\"\" -> " + Str(*regExEngine\nfaPools()\initialNfaState) + ";")
    ForEach *regExEngine\nfaPools()\nfaStates()
      Select *regExEngine\nfaPools()\nfaStates()\stateType
        Case RegEx::#StateType_EpsilonMove
          WriteStringN(file, Space(2) + Str(*regExEngine\nfaPools()\nfaStates()) + " -> " +
                             Str(*regExEngine\nfaPools()\nfaStates()\nextState1) + ~" [label = \"&epsilon;\", style = dashed];")
        Case RegEx::#StateType_SplitMove
          WriteStringN(file, Space(2) + Str(*regExEngine\nfaPools()\nfaStates()) + " -> " +
                             Str(*regExEngine\nfaPools()\nfaStates()\nextState1) + ~" [label = \"&epsilon;\", style = dashed];")
          WriteStringN(file, Space(2) + Str(*regExEngine\nfaPools()\nfaStates()) + " -> " +
                             Str(*regExEngine\nfaPools()\nfaStates()\nextState2) + ~" [label = \"&epsilon;\", style = dashed];")
        Case RegEx::#StateType_Final To 65535
          WriteStringN(file, Space(2) + Str(*regExEngine\nfaPools()\nfaStates()) + ~" [label = \"" + Str(*regExEngine\nfaPools()\nfaStates()) +
                             "\n(id:" + Str(*regExEngine\nfaPools()\nfaStates()\stateType - RegEx::#StateType_Final) + ~")\", shape = doublecircle];")
        Default
          WriteString(file, Space(2) + Str(*regExEngine\nfaPools()\nfaStates()) + " -> " +
                            Str(*regExEngine\nfaPools()\nfaStates()\nextState1) + ~" [label = \"")
          If *regExEngine\nfaPools()\nfaStates()\byteRange\min <> *regExEngine\nfaPools()\nfaStates()\byteRange\max
            WriteStringN(file, RSet(Hex(*regExEngine\nfaPools()\nfaStates()\byteRange\min), 2, "0") + "-" +
                               RSet(Hex(*regExEngine\nfaPools()\nfaStates()\byteRange\max), 2, "0") + ~"\"];")
          Else
            WriteStringN(file, RSet(Hex(*regExEngine\nfaPools()\nfaStates()\byteRange\min), 2, "0") + ~"\"];")
          EndIf
      EndSelect
    Next
  Next
  
  WriteStringN(file, "}")
  CloseFile(file)
  
  ProcedureReturn #True
EndProcedure

Procedure CreateDfaGraph(*regExEngine.RegEx::RegExEngineStruc, filePath$)
  Protected sizeOfArray, file, state, symbol
  
  file = CreateFile(#PB_Any, filePath$)
  If file = 0
    ProcedureReturn #False
  EndIf
  
  WriteStringN(file, "digraph dfa_state_diagram {")
  WriteStringN(file, Space(2) + "rankdir = LR;")
  WriteStringN(file, Space(2) + ~"\"\" [shape = none, fixedsize = true, height = 0, width = 0];")
  WriteStringN(file, Space(2) + "node [shape = circle];")
  WriteStringN(file, Space(2) + ~"\"\" -> 1;")
  
  sizeOfArray = MemorySize(*regExEngine\dfaStatesPool) / SizeOf(RegEx::DfaStateStruc) - 1
  For state = 1 To sizeOfArray
    For symbol = 0 To $FF
      If *regExEngine\dfaStatesPool\states[state]\nextState[symbol] = RegEx::#State_DfaDeadState
        Continue
      EndIf
      WriteStringN(file, Space(2) + Str(state) + " -> " + Str(*regExEngine\dfaStatesPool\states[state]\nextState[symbol]) +
                         ~" [label = \"" + RSet(Hex(symbol), 2, "0") + ~"\"];")
    Next
    If *regExEngine\dfaStatesPool\states[state]\isFinalState
      WriteStringN(file, Space(2) + Str(state) + ~" [label = \"" + Str(state) +
                         "\n(id:" + Str(*regExEngine\dfaStatesPool\states[state]\isFinalState - 1) +
                         ~")\", shape = doublecircle];")
    EndIf
  Next
  
  WriteStringN(file, "}")
  CloseFile(file)
  
  ProcedureReturn #True
EndProcedure

Procedure OpenWithStandardProgram(filePath$)
  Protected result
  
  ; Avoid problems with paths containing spaces
  filePath$ = #DQUOTE$ + filePath$ + #DQUOTE$
  
  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      ; https://docs.microsoft.com/en-us/windows/desktop/api/shellapi/nf-shellapi-shellexecutew
      result = Bool(ShellExecute_(0, "open", @filePath$, #Null, #Null, #SW_SHOW) > 32)
    CompilerCase #PB_OS_Linux
      ; https://portland.freedesktop.org/doc/xdg-open.html
      result = Bool(RunProgram("xdg-open", filePath$, GetCurrentDirectory()))
    CompilerCase #PB_OS_MacOS
      result = Bool(RunProgram("open", filePath$, GetCurrentDirectory()))
  CompilerEndSelect
  
  ProcedureReturn result
EndProcedure
