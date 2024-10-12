
DeclareModule AvlTree
  
  EnableExplicit
  
  Structure AvlNodeStruc
    key.i
    *left.AvlNodeStruc
    *right.AvlNodeStruc
    height.b
  EndStructure
  
  Structure AvlTreeStruc
    *root.AvlNodeStruc
    itemsCount.i
    List *nodesStack.AvlNodeStruc() ; Needed for NextNode()
  EndStructure
  
  ; Creates a new AVL tree and returns the pointer to the
  ; `AvlTreeStruc` structure. If an error occurred null is returned.
  Declare Init()
  
  ; Adds a new entry to an existing AVL tree. On success `#True` is returned, otherwise `#False`.
  Declare Insert(*avlTree, key)
  
  ; Searches for an entry in the AVL tree. If successful, the pointer to the found entry (`AvlNodeStruc`) is returned, otherwise null.
  Declare Search(*avlTree, key)
  
  ; Resets the stack so that `NextNode()` starts again at the first entry in the AVL tree.
  Declare ResetTree(*avlTree)
  
  ; If a next entry in the AVL tree was found, the pointer to the entry (`AvlNodeStruc`) is returned, otherwise null.
  Declare NextNode(*avlTree)
  
  ; Adds an AVL tree to an existing AVL tree. On success `#True` is returned, otherwise `#False`.
  Declare InsertTree(*sourceAvlTree, *targetAvlTree)
  
  ; Frees the RegEx engine
  Declare Free(*avlTree)
  
EndDeclareModule

Module AvlTree
  
  CompilerIf #PB_Compiler_Debugger
    DisableDebugger
  CompilerEndIf
  
  Procedure Init()
    ProcedureReturn AllocateStructure(AvlTreeStruc)
  EndProcedure
  
  Procedure Max(value1, value2)
    If value1 > value2
      ProcedureReturn value1
    Else
      ProcedureReturn value2
    EndIf
  EndProcedure
  
  Procedure GetHeight(*node.AvlNodeStruc)
    If *node = 0
      ProcedureReturn 0
    EndIf
    ProcedureReturn *node\height
  EndProcedure
  
  Procedure UpdateHeight(*node.AvlNodeStruc)
    *node\height = 1 + Max(GetHeight(*node\left), GetHeight(*node\right))
  EndProcedure
  
  Procedure GetBalanceFactor(*node.AvlNodeStruc)
    If *node = 0
      ProcedureReturn 0
    EndIf
    ProcedureReturn GetHeight(*node\left) - GetHeight(*node\right)
  EndProcedure
  
  Procedure RotateRight(*node.AvlNodeStruc)
    Protected.AvlNodeStruc *newRootNode = *node\left
    
    *node\left = *newRootNode\right
    *newRootNode\right = *node
    
    UpdateHeight(*node)
    UpdateHeight(*newRootNode)
    
    ProcedureReturn *newRootNode
  EndProcedure
  
  Procedure RotateLeft(*node.AvlNodeStruc)
    Protected.AvlNodeStruc *newRootNode = *node\right
    
    *node\right = *newRootNode\left
    *newRootNode\left = *node
    
    UpdateHeight(*node)
    UpdateHeight(*newRootNode)
    
    ProcedureReturn *newRootNode
  EndProcedure
  
  Procedure PrivateInsert(*node.AvlNodeStruc, key)
    Protected balanceFactor
    
    If *node = 0
      *node = AllocateStructure(AvlNodeStruc)
      If *node = 0
        ProcedureReturn 0
      EndIf
      *node\key = key
      *node\height = 1
      ProcedureReturn *node
    EndIf
    
    If key < *node\key
      *node\left = PrivateInsert(*node\left, key)
    ElseIf key > *node\key
      *node\right = PrivateInsert(*node\right, key)
    Else
      ; Key already exists in the AVL tree
      ProcedureReturn *node
    EndIf
    
    UpdateHeight(*node)
    balanceFactor = GetBalanceFactor(*node)
    
    If balanceFactor > 1
      If GetBalanceFactor(*node\left) >= 0
        ProcedureReturn RotateRight(*node)
      Else
        *node\left = RotateLeft(*node\left)
        ProcedureReturn RotateRight(*node)
      EndIf
    EndIf
    
    If balanceFactor < -1
      If GetBalanceFactor(*node\right) <= 0
        ProcedureReturn RotateLeft(*node)
      Else
        *node\right = RotateRight(*node\right)
        ProcedureReturn RotateLeft(*node)
      EndIf
    EndIf
    
    ProcedureReturn *node
  EndProcedure
  
  Procedure Insert(*avlTree.AvlTreeStruc, key)
    Protected *node = PrivateInsert(*avlTree\root, key)
    If *node = 0
      ProcedureReturn #False
    EndIf
    *avlTree\itemsCount + 1
    *avlTree\root = *node
    ClearList(*avlTree\nodesStack())
    AddElement(*avlTree\nodesStack())
    *avlTree\nodesStack() = *avlTree\root
    ProcedureReturn #True
  EndProcedure
  
  Procedure PrivateSearch(*node.AvlNodeStruc, key)
    If *node = 0
      ProcedureReturn 0
    EndIf
    
    While *node <> 0 And key <> *node\key
      If key < *node\key
        *node = *node\left
      Else
        *node = *node\right
      EndIf
    Wend
    
    ProcedureReturn *node
  EndProcedure
  
  Procedure Search(*avlTree.AvlTreeStruc, key)
    ProcedureReturn PrivateSearch(*avlTree\root, key)
  EndProcedure
  
  Procedure ResetTree(*avlTree.AvlTreeStruc)
    ClearList(*avlTree\nodesStack())
    If *avlTree\root
      AddElement(*avlTree\nodesStack())
      *avlTree\nodesStack() = *avlTree\root
    EndIf
  EndProcedure
  
  Procedure NextNode(*avlTree.AvlTreeStruc)
    Protected.AvlNodeStruc *node
    If Not FirstElement(*avlTree\nodesStack())
      ProcedureReturn 0
    EndIf
    *node = *avlTree\nodesStack()
    DeleteElement(*avlTree\nodesStack())
    LastElement(*avlTree\nodesStack())
    If *node\left
      AddElement(*avlTree\nodesStack())
      *avlTree\nodesStack() = *node\left
    EndIf
    If *node\right
      AddElement(*avlTree\nodesStack())
      *avlTree\nodesStack() = *node\right
    EndIf
    ProcedureReturn *node
  EndProcedure
  
  Procedure InsertNode(*sourceAvlNode.AvlNodeStruc, *targetAvlTree.AvlTreeStruc)
    If *sourceAvlNode <> 0
      If Not Insert(*targetAvlTree, *sourceAvlNode\key)
        ProcedureReturn #False
      EndIf
      InsertNode(*sourceAvlNode\left, *targetAvlTree)
      InsertNode(*sourceAvlNode\right, *targetAvlTree)
    EndIf
    ProcedureReturn #True
  EndProcedure
  
  Procedure InsertTree(*sourceAvlTree.AvlTreeStruc, *targetAvlTree.AvlTreeStruc)
    ProcedureReturn InsertNode(*sourceAvlTree\root, *targetAvlTree)
  EndProcedure
  
  Procedure PrivateFree(*node.AvlNodeStruc)
    If *node
      PrivateFree(*node\left)
      PrivateFree(*node\Right)
      FreeStructure(*node)
    EndIf
  EndProcedure
  
  Procedure Free(*avlTree.AvlTreeStruc)
    PrivateFree(*avlTree\root)
    FreeStructure(*avlTree)
  EndProcedure
  
  CompilerIf #PB_Compiler_Debugger
    EnableDebugger
  CompilerEndIf
  
EndModule
