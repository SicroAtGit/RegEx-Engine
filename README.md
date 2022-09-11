# RegEx-Engine

https://github.com/SicroAtGit/RegEx-Engine

> Development stage: Alpha version

## About

This RegEx engine compiles a regular expression into an NFA, optionally then into a very fast DFA, and can execute the NFA/DFA against a string.

The NFA is built with the [Thompson's construction](https://en.wikipedia.org/wiki/Thompson%27s_construction) and with two extra constructions for `x+` and `x?`.

When matching, the RegEx engine matches always the longest match among several possible matches. During this process, no backtracking is required, because all alternations are checked simultaneously.

## Examples

### Simple Match

```purebasic
*regEx = RegEx::Init()
If *regEx
  RegEx::AddNfa(*regEx, "test|example")
  If RegEx::Match(*regEx, @"example")
    Debug "Match!"
  Else
    Debug "No match!"
  EndIf
  RegEx::Free(*regEx)
Else
  Debug "Error!"
EndIf
```

### Multiple RegExes Simultaneously

```purebasic
Enumeration
  #RegExId_Word
  #RegExId_Number
EndEnumeration

*regEx = RegEx::Init()
If *regEx
  RegEx::AddNfa(*regEx, "\w+", #RegExId_Word)
  RegEx::AddNfa(*regEx, "\d+", #RegExId_Number)
  If RegEx::Match(*regEx, @"example", @regExId)
    Select regExId
      Case #RegExId_Word:   Debug "Match is a word!"
      Case #RegExId_Number: Debug "Match is a number!"
    EndSelect
  Else
    Debug "No match!"
  EndIf
  RegEx::Free(*regEx)
Else
  Debug "Error!"
EndIf
```

More code examples can be found in the [`examples`](examples) directory.

## Supported Syntax

| Syntax  | Meaning |
| ------- | ------- |
| `xy`    | `x` followed by `y` (Concatenation) |
| `x\|y`  | `x` or `y` (Alternation) |
| `x*`    | Zero or more of `x` |
| `x+`    | One or more of `x` |
| `x?`    | Zero or one of `x` |
| `(` `)` | Groups a regular expression. Groups inherit the active modes of the context outside. Mode changes within a group has no effect on the context outside this group |
| `\*`    | Escapes the metacharacter `*` to use it as a normal character.<br>Works also with the other metacharacters: `\|` `+` `?` `(` `)` `\` |
| `\r`    | Matches the carriage return character (`\x0D`) |
| `\n`    | Matches the line feed character (`\x0A`) |
| `\t`    | Matches the horizontal tab character (`\x09`) |
| `\f`    | Matches the form feed character (`\x0C`) |
| `[x]`   | `x` can be several mixes of: single character, escape sequence or range (`a-c`) |
| `.`     | Matches any character except `\r` and `\n` |
| `\d`    | Matches Unicode's character class [Nd](https://util.unicode.org/UnicodeJsps/list-unicodeset.jsp?a=%5B%3ANd%3A%5D&abb=on&esc=on&g=&i=) |
| `\D`    | Matches any character except the Unicode's character class [Nd](https://util.unicode.org/UnicodeJsps/list-unicodeset.jsp?a=%5B%3ANd%3A%5D&abb=on&esc=on&g=&i=) |
| `\s`    | Matches Unicode's character class [White_Space](https://util.unicode.org/UnicodeJsps/list-unicodeset.jsp?a=%5B%3AWhite_Space%3A%5D&abb=on&esc=on&g=&i=) |
| `\S`    | Matches any character except the Unicode's character class [White_Space](https://util.unicode.org/UnicodeJsps/list-unicodeset.jsp?a=%5B%3AWhite_Space%3A%5D&abb=on&esc=on&g=&i=) |
| `\w`    | Matches Unicode's character classes [Alphabetic, M, Nd, Pc and Join_Control](https://util.unicode.org/UnicodeJsps/list-unicodeset.jsp?a=%5B%3AAlphabetic%3A%5D%5B%3AM%3A%5D%5B%3ANd%3A%5D%5B%3APc%3A%5D%5B%3AJoin_Control%3A%5D&abb=on&esc=on&g=&i=) |
| `\W`    | Matches any character except the Unicode's character classes [Alphabetic, M, Nd, Pc, Join_Control](https://util.unicode.org/UnicodeJsps/list-unicodeset.jsp?a=%5B%3AAlphabetic%3A%5D%5B%3AM%3A%5D%5B%3ANd%3A%5D%5B%3APc%3A%5D%5B%3AJoin_Control%3A%5D&abb=on&esc=on&g=&i=) |
| `\x`    | Matches the character represented by the hex code (exactly two digits, `\x01` up to `\xFF`) |
| `\u`    | Matches the character represented by the hex code (exactly four digits, `\u0001` up to `\uFFFF`) |
| `(?i)`  | Activates the case-insensitive mode |
| `(?-i)` | Deactivates the case-insensitive mode |

## Unicode Support

Like the native string functions in PureBasic, the RegEx engine uses the UCS-2 character encoding, which limits it to Unicode code points `\u0001` up to `\uFFFF` and interprets UTF-16 surrogate pairs as single characters.

## Case-Insensitive Mode

The implementation uses [Unicode's Simple Case Folding](https://unicode.org/reports/tr18/#Simple_Loose_Matches) variant, but in reverse: Instead of mapping all character variations to a single character (folding), a single character is mapped to all character variations (unfolding). This is necessary because the DFA must know all valid characters.

## Public Constants

```purebasic
EnumerationBinary RegExModes
  #RegExMode_NoCase ; Activates case-insensitive mode
EndEnumeration
```

```purebasic
Enumeration NfaSpecialSymbols 256
  #Symbol_Move  ; Used for NFA epsilon moves
  #Symbol_Split ; Used for NFA unions
  #Symbol_Final ; Used for NFA final state
EndEnumeration
```

```purebasic
#State_DfaDeadState = 0 ; Index number of the DFA dead state
```

## Public Structures

```purebasic
Structure NfaStateStruc
  symbol.u                  ; Symbol (0-255) or special symbol
  *nextState1.NfaStateStruc ; Pointer to the first next NFA state
  *nextState2.NfaStateStruc ; Pointer to the second next NFA state
EndStructure
```

```purebasic
Structure DfaStateStruc
  symbols.u[256] ; Index is the symbol (0-255) and the value is the next DFA state
  isFinalState.u ; Positive number if the DFA state is a final state, otherwise null
EndStructure
```

```purebasic
Structure DfaStatesArrayStruc
  states.DfaStateStruc[0] ; Array pointer to the DFA states
EndStructure
```

```purebasic
Structure NfaPoolStruc
  List nfaStates.NfaStateStruc() ; Holds all NFA states of the NFA pool
  *initialNfaState.NfaStateStruc ; Pointer to the NFA initial state
EndStructure
```

```purebasic
Structure RegExEngineStruc
  List nfaPools.NfaPoolStruc()       ; Holds all NFA pools
  *dfaStatesPool.DfaStatesArrayStruc ; Holds all DFA states
  isUseDfaFromMemory.b               ; `#True` if `UseDfaFromMemory()` was used, otherwise `#False`
EndStructure
```

## Public Macros

- **`GetString(_memoryAddress_, _lengthInBytes_)`**<br><br>
Simplifies the return of the match as a string.

## Public Functions

- **`Init()`**<br><br>
Creates a new RegEx engine and returns the pointer to the `RegExEngineStruc` structure. If an error occurred null is returned.

- **`AddNfa(*regExEngine.RegExEngineStruc, regExString$, regExId = 0, regExModes = 0)`**<br><br>
Compiles the RegEx into a NFA and adds the NFA then to the NFAs pool in the RegEx engine. On success `#True` is returned, otherwise `#False`. A unique number can be passed to `regExId` to determine later which RegEx has matched. With the optional `regExModes` parameter it can be defined which RegEx modes should be activated at the beginning.

- **`CreateDfa(*regExEngine.RegExEngineStruc, clearNfa = #True)`**<br><br>
Creates a single DFA from the existing NFAs in the RegEx engine. `Match()` then always uses the DFA and is much faster. Because the NFAs are no longer used after this, they are cleared by default. The clearing can be turned off by setting `clearNfa` to `#False`. On success `#True` is returned, otherwise `#False`. If a DFA already exists, the DFA will be freed before creating a new DFA.

- **`Free(*regExEngine.RegExEngineStruc)`**<br><br>
Frees the RegEx engine.

- **`UseDfaFromMemory(*dfaMemory)`**<br><br>
Creates a new RegEx engine and assigns an existing DFA stored in external memory to the RegEx engine. After that the RegEx engine is directly ready to use; no call of `Init()`, `AddNfa()` or `CreateDfa()` is necessary. On success the pointer to `RegExEngineStruc` is returned, otherwise null.

- **`Match(*regExEngine.RegExEngineStruc, *string.Unicode, *regExId.Integer = 0)`**<br><br>
Runs the RegEx engine against the string. The function requires the pointer to the string. The match search will start from the beginning of the string. If a match is found, the byte length of the match is returned, otherwise null. If an address to an integer variable was passed in the optional `*regExId` parameter, the RegEx ID number of the matched RegEx is written into it. If there are multiple RegExes that match the same string and have been assigned different RegEx ID numbers, the RegEx ID number of the last matched RegEx is taken, i.e. the last matched RegEx added with the `AddNfa()` function.

- **`GetLastErrorMessages()`**<br><br>
Returns the error messages of the last `AddNfa()` call as a human-readable string.

- **`ExportDfa(*regExEngine.RegExEngineStruc, filePath$)`**<br><br>
Exports the created DFA as a binary file. On success `#True` is returned, otherwise `#False`.

## Reduced DFA Matcher Module

The reduced module `DfaMatcher` provides only a DFA matcher which uses the precompiled DFAs created with the main module.

If only the precompiled DFAs are needed in the software for matching and no new NFAs/DFAs are to be created at runtime, then the reduced module can be used. This way the software is not unnecessarily bloated with the large Unicode tables and the other code of the main module.

### Public Constants

```purebasic
#Symbol_Final = 258     ; Used for NFA final state
#State_DfaDeadState = 0 ; Index number of the DFA dead state
```

### Public Structures

```purebasic
Structure DfaStateStruc
  symbols.u[256] ; Index is the symbol (0-255) and the value is the next DFA state
  isFinalState.u ; Positive number if the DFA state is a final state, otherwise null
EndStructure
```

```purebasic
Structure DfaStatesArrayStruc
  states.DfaStateStruc[0] ; Array pointer to the DFA states
EndStructure
```

### Public Macros

- **`GetString(_memoryAddress_, _lengthInBytes_)`**<br><br>
Simplifies the return of the match as a string.

### Public Functions

- **`Match(*dfaMemory, *string.Unicode, *regExId.Integer = 0)`**<br><br>
Runs the DFA against the string. The function requires the pointer to the string. The match search will start from the beginning of the string. If a match is found, the byte length of the match is returned, otherwise null. If an address to an integer variable was passed in the optional `*regExId` parameter, the RegEx ID number of the matched RegEx is written into it. If there are multiple RegExes that match the same string and have been assigned different RegEx ID numbers, the RegEx ID number of the last matched RegEx is taken, i.e. the last matched RegEx added with the `AddNfa()` function from the main module.

## License

The project is licensed under the MIT license.
