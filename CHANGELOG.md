## [1.1.0] (2025-02-16)

**New:**

- Single-byte mode: creates much smaller NFAs/DFAs by only supporting characters that do not need the second byte in the UCS-2 encoding (`\x01` up to `\xFF`).
- Code example that visualizes the NFAs/DFAs as Graphviz diagrams.

**Improved:**

- It is checked whether the parameter `regExId` in `AddNfa()` has a valid value.
- Matching with an NFA and creating a DFA is faster. The extent of the speed increase depends on how many alternative paths have to be followed during NFA processing (e.g. a large number of paths are followed by the very complex RegEx character class `\w`).

**Fixed:**

- Outside of character classes, identical characters were unnecessarily added twice to the NFA when both case-insensitive mode and ASCII mode were enabled and the character has no upper and lower case.

## [1.0.1] (2023-09-20)

**Fixed:**

- Fix NoCase (case-insensitive) mode with ASCII mode on chars outside of char classes.
- Fix syntax error when using PureBasic 6.02 LTS.

## [1.0.0] (2023-04-01)

First final version.

<!--------------------------------------------------------------------------->

[1.1.0]: https://github.com/SicroAtGit/RegEx-Engine/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/SicroAtGit/RegEx-Engine/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/SicroAtGit/RegEx-Engine/tree/v1.0.0
