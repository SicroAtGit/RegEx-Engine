
IncludePath ".."
IncludeFile "RegExEngine.pbi"

Define.RegEx::RegExEngineStruc *regEx
Define sizeOfArray, i, i2
Define hex$

*regEx = RegEx::Create("ab*")
If *regEx = 0
  Debug "Error"
  End
EndIf

RegEx::CreateDfa(*regEx)

Debug "| State               | Symbol | Next state          |"
Debug "| =================== | ====== | =================== |"
sizeOfArray = ArraySize(*regEx\dfaStatesPool())
For i = 1 To sizeOfArray
  If *regEx\dfaStatesPool(i)\isFinalState
    Debug "| " + LSet(Str(i) + " (final)", 19) + " | " + Space(6) + " | " +
          Space(19) + " |"
  Else
    Debug "| " + LSet(Str(i), 19) + " | " + Space(6) + " | " + Space(19) + " |"
  EndIf
  
  For i2 = 0 To 255
    If *regEx\dfaStatesPool(i)\symbols[i2] <> RegEx::#State_DfaDeadState
      hex$ = RSet(Hex(i2), 2, "0")
      Debug "| " + Space(19) +
            " | " + LSet(hex$, 6) +
            " | " + LSet(Str(*regEx\dfaStatesPool(i)\symbols[i2]), 19) + " |"
    EndIf
  Next
  Debug "| ------------------- | ------ | ------------------- |"
Next

RegEx::Free(*regEx)
