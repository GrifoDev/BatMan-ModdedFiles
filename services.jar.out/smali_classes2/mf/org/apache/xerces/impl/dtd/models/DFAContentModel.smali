.class public Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;
.super Ljava/lang/Object;
.source "DFAContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static fEOCString:Ljava/lang/String;

.field private static fEpsilonString:Ljava/lang/String;


# instance fields
.field private fEOCPos:I

.field private fElemMap:[Lmf/org/apache/xerces/xni/QName;

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fEmptyContentIsValid:Z

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

.field private fLeafListType:[I

.field private fMixed:Z

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "<<CMNODE_EPSILON>>"

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    const-string/jumbo v0, "<<CMNODE_EOC>>"

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTableSize:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    iput p2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fMixed:Z

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    sget-object v34, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    sget-object v35, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    new-instance v33, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    const/16 v34, 0x5

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    add-int/lit8 v34, v33, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->setPosition(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v33, v0

    new-instance v34, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v34, v33, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v23

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    new-instance v34, Lmf/org/apache/xerces/xni/QName;

    invoke-direct/range {v34 .. v34}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v34, v33, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v33, v0

    aget-object v33, v33, v23

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v9

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v13, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    aget-object v33, v33, v13

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v13, v0, :cond_2

    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v34, v0

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    move-object/from16 v35, v0

    aget v35, v35, v23

    aput v35, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    new-array v10, v0, [I

    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v8, v0, :cond_6

    const/16 v16, 0x0

    move v12, v11

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v33, v0

    aget-object v33, v33, v16

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v33, v0

    aget-object v9, v33, v8

    iget-object v0, v15, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_4

    move v11, v12

    :goto_6
    add-int/lit8 v16, v16, 0x1

    move v12, v11

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v12, 0x1

    aput v16, v10, v12

    goto :goto_6

    :cond_5
    add-int/lit8 v11, v12, 0x1

    const/16 v33, -0x1

    aput v33, v10, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    mul-int/lit8 v6, v33, 0x4

    new-array v0, v6, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v30, v0

    new-array v0, v6, [Z

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    new-array v0, v6, [[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v24

    const/16 v32, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v33, 0x0

    aput-object v24, v30, v33

    const/4 v7, 0x1

    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    :cond_7
    move/from16 v0, v32

    if-ge v0, v7, :cond_f

    aget-object v24, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v33, v0

    aget-object v31, v33, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    move/from16 v34, v0

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v34

    aput-boolean v34, v33, v32

    add-int/lit8 v32, v32, 0x1

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/4 v8, 0x0

    move/from16 v26, v25

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v8, v0, :cond_7

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    :goto_8
    add-int/lit8 v25, v26, 0x1

    aget v16, v10, v26

    move/from16 v26, v25

    :goto_9
    const/16 v33, -0x1

    move/from16 v0, v16

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v33

    if-nez v33, :cond_9

    :goto_a
    add-int/lit8 v25, v26, 0x1

    aget v16, v10, v26

    move/from16 v26, v25

    goto :goto_9

    :cond_8
    new-instance v18, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v33, v0

    aget-object v33, v33, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_a

    :cond_a
    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_c

    :cond_b
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    if-eqz v28, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v27

    :goto_c
    move/from16 v0, v27

    if-eq v0, v7, :cond_e

    :goto_d
    aput v27, v31, v8

    if-ne v7, v6, :cond_b

    int-to-double v0, v6

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff8000000000000L    # 1.5

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v20, v0

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move/from16 v0, v19

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move-object/from16 v2, v20

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v17

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v21

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v6, v19

    move-object/from16 v30, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    goto/16 :goto_b

    :cond_d
    move/from16 v27, v7

    goto :goto_c

    :cond_e
    aput-object v18, v30, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v33, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v34

    aput-object v34, v33, v7

    new-instance v33, Ljava/lang/Integer;

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    const/16 v18, 0x0

    goto/16 :goto_d

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v33, v0

    check-cast v33, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-void
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_0
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_1
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_1
    if-eq v1, v4, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Seq Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    :goto_3
    return-void

    :cond_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Choice Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Rep Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_3

    :cond_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Leaf: (pos="

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getPosition()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "(elemIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v4, v4, v2}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->getPosition()I

    move-result v2

    invoke-direct {v4, v1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;I)V

    aput-object v4, v3, p2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    aput v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    :cond_1
    :goto_0
    return p2

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :cond_3
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_5
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ImplementationMessages.VAL_NIICM: type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    aput-object p1, v2, p2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    aput v5, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_c

    add-int v6, p2, v0

    aget-object v1, p1, v6

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fMixed:Z

    if-nez v6, :cond_4

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v3, v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    aget v6, v6, v3

    and-int/lit8 v4, v6, 0xf

    if-eqz v4, :cond_6

    const/4 v6, 0x6

    if-eq v4, v6, :cond_8

    const/16 v6, 0x8

    if-eq v4, v6, :cond_9

    const/4 v6, 0x7

    if-eq v4, v6, :cond_a

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    if-nez v8, :cond_3

    :goto_3
    return v6

    :cond_3
    move v6, v7

    goto :goto_3

    :cond_4
    iget-object v6, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v6, :cond_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v3

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v6, v8, :cond_1

    :cond_7
    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-eq v3, v6, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v6, v6, v2

    aget v2, v6, v3

    if-ne v2, v7, :cond_5

    return v0

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v3

    iget-object v5, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v6, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_7

    goto :goto_2

    :cond_9
    iget-object v6, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v3

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v6, v8, :cond_7

    goto :goto_2

    :cond_b
    return v0

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_d

    return v7

    :cond_d
    return p3
.end method
