# Regular Expression Engine

https://github.com/SicroAtGit/PB-RegEx-Engine

> Development stage: Alpha version

## About

This RegEx engine compiles a regular expression into an E-NFA, optionally then into a very fast DFA, and can execute the E-NFA/DFA against a string.

The E-NFA is built with the [Thompson's construction](https://en.wikipedia.org/wiki/Thompson%27s_construction) and with two extra constructions for `x+` and `x?`.

When matching, the RegEx engine matches always the longest match among several possible matches (POSIX-compliant). During this process, no backtracking is required, because all alternations are checked simultaneously.

## Supported Syntax

| Syntax  | Meaning |
| ------- | ------- |
| `xy`    | `x` followed by `y` (Concatenation) |
| `x\|y`  | `x` or `y` (Alternation) |
| `x*`    | Zero or more of `x` |
| `x+`    | One or more of `x` |
| `x?`    | Zero or one of `x` |
| `(` `)` | Groups a regular expression |
| `\*`    | Escapes the metacharacter `*` to use it as a normal character.<br>Works also with the other metacharacters: `\|` `+` `?` `(` `)` `\` |

## Example

```purebasic
*regEx = RegEx::Create("test|example")
If *regEx
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
More code examples can be found in the [`examples`](examples) directory.

## Unicode Support

All characters that PureBasic supports in Unicode mode are supported, i.e. `[\u0001-\uFFFF]`.

## Public Enumerations

```purebasic
Enumeration NfaSpecialSymbols 256
  #Symbol_Move  ; Used for NFA epsilon moves
  #Symbol_Split ; Used for NFA unions
  #Symbol_Final ; Used for NFA final state
EndEnumeration
```

## Public Structures

```purebasic
Structure NfaStateStruc
  symbol.i    ; Symbol (0-255) or special symbol
  *nextState1 ; Pointer to the first next NFA state
  *nextState2 ; Pointer to the second next NFA state
EndStructure
```

```purebasic
Structure DfaStateStruc
  Map symbols.i() ; Key is the symbol (0-255) and the value is the next DFA state
  isFinalState.i  ; `#True` if the DFA state is a final state, otherwise `#False`
EndStructure
```

```purebasic
Structure RegExEngineStruc
  List nfaStatesPool.NfaStateStruc()   ; Holds all NFA states
  *initialNfaState                     ; Pointer to the NFA initial state
  Array dfaStatesPool.DfaStateStruc(0) ; Holds all DFA states
EndStructure
```

## Public Functions

- `Create(regExString$)`<br>
Creates a new RegEx engine and returns the pointer to the `RegExEngineStruc` structure. If an error occurred (RegEx syntax error or memory could not be allocated) null is returned.

- `CreateDfa(*regExEngine, clearNfa = #True)`<br>
Creates a DFA in the RegEx engine from the NFA created by `Create()`. `Match()` then always uses the DFA and is much faster. Because the NFA is no longer used after this, it is cleared by default. The clearing can be turned off by setting `clearNfa` to `#False`.

- `Free(*regExEngine)`<br>
Frees the memory of the RegEx engine created by the function `Create()`.

- `Match(*regExEngine, *string)`<br>
Runs the Regex engine against the string. The function requires the pointer to the string, which can be determined with `@variable$` or `@"text"`. The match search will start from the beginning of the string. If you want to start from a different position, you have to move the pointer of the string, e.g. `*string + SizeOf(Character)` to search from the second character in the string. If a match is found, the character length of the match is returned, otherwise zero.

- `GetLastErrorMessages()`<br>
Returns the error messages of the last `Create()` call as a human-readable string.
