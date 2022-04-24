
IncludePath ".."
IncludeFile "RegExEngine.pbi"

Procedure$ GetSymbolAsString(symbol)
  If symbol => RegEx::#Symbol_Final
    ProcedureReturn "Final:" + Str(symbol - RegEx::#Symbol_Final)
  ElseIf symbol = RegEx::#Symbol_Move
    ProcedureReturn "Move"
  ElseIf symbol = RegEx::#Symbol_Split
    ProcedureReturn "Split"
  Else
    ProcedureReturn RSet(Hex(symbol), 2, "0")
  EndIf
EndProcedure

Define.RegEx::RegExEngineStruc *regEx
Define nfaPoolNumber

*regEx = RegEx::Init()
If *regEx = 0
  Debug "Error"
  End
EndIf

If RegEx::AddNfa(*regEx, "a*") = #False
  Debug RegEx::GetLastErrorMessages()
  RegEx::Free(*regEx)
  End
EndIf

ForEach *regEx\nfaPools()
  nfaPoolNumber + 1
  Debug ">>>> NFA-Pool-Number: " + nfaPoolNumber
  Debug ""
  
  Debug Space(5) + "Initial state: " + *regEx\nfaPools()\initialNfaState
  Debug ""
  Debug Space(5) + "| State               | Symbol   | Next state 1        | Next state 2        |"
  Debug Space(5) + "| =================== | ======== | =================== | =================== |"
  ForEach *regEx\nfaPools()\nfaStates()
    Debug Space(5) + "| " + LSet(Str(@*regEx\nfaPools()\nfaStates()), 19) +
          " | " + LSet(GetSymbolAsString(*regEx\nfaPools()\nfaStates()\symbol), 8) +
          " | " + LSet(Str(*regEx\nfaPools()\nfaStates()\nextState1), 19) +
          " | " + LSet(Str(*regEx\nfaPools()\nfaStates()\nextState2), 19) + " |"
    Debug Space(5) + "| ------------------- | -------- | ------------------- | ------------------- |"
  Next
  
  Debug ""
Next

RegEx::Free(*regEx)
