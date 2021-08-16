
IncludePath ".."
IncludeFile "RegExEngine.pbi"

Procedure$ GetSymbolAsString(symbol)
  Select symbol
    Case RegEx::#Symbol_Final
      ProcedureReturn "Final"
    Case RegEx::#Symbol_Move
      ProcedureReturn "Move"
    Case RegEx::#Symbol_Split
      ProcedureReturn "Split"
    Default
      ProcedureReturn Chr(symbol)
  EndSelect
EndProcedure

Define.RegEx::RegExEngineStruc *regEx

*regEx = RegEx::Create("a*")
If *regEx = 0
  Debug "Error"
  End
EndIf

Debug "Initial state: " + *regEx\initialNfaState
Debug ""
Debug "| State               | Symbol | Next state 1        | Next state 2        |"
Debug "| =================== | ====== | =================== | =================== |"
ForEach *regEx\nfaStatesPool()
  Debug "| " + LSet(Str(@*regEx\nfaStatesPool()), 19) +
        " | " + LSet(GetSymbolAsString(*regEx\nfaStatesPool()\symbol), 6) +
        " | " + LSet(Str(*regEx\nfaStatesPool()\nextState1), 19) +
        " | " + LSet(Str(*regEx\nfaStatesPool()\nextState2), 19) + " |"
  Debug "| ------------------- | ------ | ------------------- | ------------------- |"
Next

RegEx::Free(*regEx)
