.class public abstract Lmf/org/apache/xerces/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Node;
.implements Lmf/org/w3c/dom/NodeList;
.implements Lmf/org/w3c/dom/events/EventTarget;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final DOCUMENT_POSITION_IS_CONTAINED:S = 0x10s

.field public static final DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final ELEMENT_DEFINITION_NODE:S = 0x15s

.field protected static final FIRSTCHILD:S = 0x10s

.field protected static final HASSTRING:S = 0x80s

.field protected static final ID:S = 0x200s

.field protected static final IGNORABLEWS:S = 0x40s

.field protected static final NORMALIZED:S = 0x100s

.field protected static final OWNED:S = 0x8s

.field protected static final READONLY:S = 0x1s

.field protected static final SPECIFIED:S = 0x20s

.field protected static final SYNCCHILDREN:S = 0x4s

.field protected static final SYNCDATA:S = 0x2s

.field public static final TREE_POSITION_ANCESTOR:S = 0x4s

.field public static final TREE_POSITION_DESCENDANT:S = 0x8s

.field public static final TREE_POSITION_DISCONNECTED:S = 0x0s

.field public static final TREE_POSITION_EQUIVALENT:S = 0x10s

.field public static final TREE_POSITION_FOLLOWING:S = 0x2s

.field public static final TREE_POSITION_PRECEDING:S = 0x1s

.field public static final TREE_POSITION_SAME_NODE:S = 0x20s

.field static final serialVersionUID:J = -0x57a90af33c3441f0L


# instance fields
.field protected flags:S

.field protected ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected changed()V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changed()V

    return-void
.end method

.method protected changes()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes()I

    move-result v0

    return v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "**Internal Error**"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compareDocumentPosition(Lmf/org/w3c/dom/Node;)S
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v23

    :goto_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v15

    :goto_1
    move-object/from16 v0, v23

    if-ne v0, v15, :cond_6

    :cond_1
    move-object/from16 v16, p0

    move-object/from16 v8, p1

    const/16 v19, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    :goto_2
    if-eqz v7, :cond_9

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_8

    move-object/from16 v16, v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/16 v24, 0x0

    return v24

    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move/from16 v24, v0

    if-nez v24, :cond_0

    const-string/jumbo v24, "NOT_SUPPORTED_ERR"

    const-string/jumbo v25, "http://www.w3.org/dom/DOMTR"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v24, Lmf/org/w3c/dom/DOMException;

    const/16 v25, 0x9

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v1, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v24

    :cond_4
    move-object/from16 v23, p0

    check-cast v23, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_5
    move-object/from16 v15, p1

    check-cast v15, Lmf/org/w3c/dom/Document;

    goto :goto_1

    :cond_6
    if-eqz v23, :cond_1

    if-eqz v15, :cond_1

    check-cast v15, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v15}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v12

    check-cast v23, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v20

    move/from16 v0, v20

    if-gt v12, v0, :cond_7

    const/16 v24, 0x23

    return v24

    :cond_7
    const/16 v24, 0x25

    return v24

    :cond_8
    const/16 v24, 0xa

    return v24

    :cond_9
    move-object/from16 v7, p1

    :goto_3
    if-eqz v7, :cond_b

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    if-eq v7, v0, :cond_a

    move-object v8, v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_3

    :cond_a
    const/16 v24, 0x14

    return v24

    :cond_b
    invoke-interface/range {v16 .. v16}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v18

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v10

    move-object/from16 v21, p0

    move-object/from16 v13, p1

    sparse-switch v18, :sswitch_data_0

    :cond_c
    :goto_4
    sparse-switch v10, :sswitch_data_1

    :cond_d
    :goto_5
    move-object/from16 v0, v16

    if-ne v0, v8, :cond_1c

    move/from16 v0, v19

    if-gt v0, v11, :cond_1e

    const/4 v5, 0x0

    :goto_6
    sub-int v24, v11, v19

    move/from16 v0, v24

    if-ge v5, v0, :cond_22

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :sswitch_0
    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    if-eq v3, v8, :cond_e

    sparse-switch v10, :sswitch_data_2

    move-object/from16 v16, v23

    move-object/from16 v21, v23

    goto :goto_4

    :cond_e
    const/16 v24, 0xa

    return v24

    :sswitch_1
    move/from16 v0, v18

    if-ne v0, v10, :cond_f

    const/16 v24, 0xc

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v24

    check-cast v24, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v24

    if-nez v24, :cond_13

    const/16 v24, 0x24

    return v24

    :cond_f
    move/from16 v0, v18

    if-gt v0, v10, :cond_10

    const/16 v24, 0x4

    :goto_7
    return v24

    :cond_10
    const/16 v24, 0x2

    goto :goto_7

    :cond_11
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v24

    check-cast v24, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v24

    if-nez v24, :cond_12

    const/16 v24, 0x24

    return v24

    :cond_12
    const/16 v24, 0x22

    return v24

    :cond_13
    const/16 v24, 0x22

    return v24

    :sswitch_2
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    if-eqz v23, :cond_c

    move-object/from16 v0, v23

    if-ne v0, v15, :cond_c

    const/16 v24, 0x4

    return v24

    :cond_14
    const/16 v24, 0xa

    return v24

    :sswitch_3
    move-object/from16 v24, v16

    check-cast v24, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v21

    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v10, v0, :cond_16

    :cond_15
    const/16 v19, 0x0

    move-object/from16 v7, v21

    :goto_8
    if-eqz v7, :cond_c

    add-int/lit8 v19, v19, 0x1

    if-eq v7, v13, :cond_18

    move-object/from16 v16, v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_8

    :cond_16
    move-object/from16 v24, v8

    check-cast v24, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v13

    move-object/from16 v0, v21

    if-ne v13, v0, :cond_15

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v24

    check-cast v24, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v24

    if-nez v24, :cond_17

    const/16 v24, 0x24

    return v24

    :cond_17
    const/16 v24, 0x22

    return v24

    :cond_18
    const/16 v24, 0xa

    return v24

    :sswitch_4
    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_19

    move-object/from16 v8, v23

    move-object/from16 v13, v23

    goto/16 :goto_5

    :cond_19
    const/16 v24, 0x14

    return v24

    :sswitch_5
    move-object/from16 v0, v21

    if-eq v0, v15, :cond_1a

    if-eqz v15, :cond_d

    move-object/from16 v0, v23

    if-ne v0, v15, :cond_d

    const/16 v24, 0x2

    return v24

    :cond_1a
    const/16 v24, 0x14

    return v24

    :sswitch_6
    const/4 v11, 0x0

    move-object/from16 v24, v8

    check-cast v24, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v13

    move-object v7, v13

    :goto_9
    if-eqz v7, :cond_d

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v21

    if-eq v7, v0, :cond_1b

    move-object v8, v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_9

    :cond_1b
    const/16 v24, 0x14

    return v24

    :cond_1c
    check-cast v16, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v17

    check-cast v8, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v9

    move/from16 v0, v17

    if-gt v0, v9, :cond_1d

    const/16 v24, 0x23

    return v24

    :cond_1d
    const/16 v24, 0x25

    return v24

    :cond_1e
    const/4 v5, 0x0

    :goto_a
    sub-int v24, v19, v11

    move/from16 v0, v24

    if-ge v5, v0, :cond_1f

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v21

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_1f
    move-object/from16 v0, v21

    if-eq v0, v13, :cond_21

    :cond_20
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v22

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    :goto_b
    move-object/from16 v0, v22

    if-eq v0, v14, :cond_23

    move-object/from16 v21, v22

    move-object v13, v14

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v22

    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    goto :goto_b

    :cond_21
    const/16 v24, 0x2

    return v24

    :cond_22
    move-object/from16 v0, v21

    if-ne v13, v0, :cond_20

    const/16 v24, 0x4

    return v24

    :cond_23
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    :goto_c
    if-eqz v4, :cond_26

    if-eq v4, v13, :cond_24

    move-object/from16 v0, v21

    if-eq v4, v0, :cond_25

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_c

    :cond_24
    const/16 v24, 0x2

    return v24

    :cond_25
    const/16 v24, 0x4

    return v24

    :cond_26
    const/16 v24, 0x0

    return v24

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_0
        0xa -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_6
        0x6 -> :sswitch_4
        0xa -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public compareTreePosition(Lmf/org/w3c/dom/Node;)S
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v16

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v17, 0x0

    return v17

    :cond_1
    const/16 v17, 0x30

    return v17

    :cond_2
    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x6

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    const/16 v17, 0xc

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    move-object/from16 v11, p0

    move-object/from16 v5, p1

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    :goto_0
    if-eqz v4, :cond_4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_3

    move-object v11, v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/16 v17, 0x5

    return v17

    :cond_4
    move-object/from16 v4, p1

    :goto_1
    if-eqz v4, :cond_6

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_5

    move-object v5, v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_1

    :cond_5
    const/16 v17, 0xa

    return v17

    :cond_6
    move-object/from16 v14, p0

    move-object/from16 v8, p1

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v12

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_a

    :goto_2
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_b

    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_c

    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_d

    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_f

    :cond_9
    if-ne v11, v5, :cond_11

    if-gt v13, v7, :cond_12

    const/4 v3, 0x0

    :goto_4
    sub-int v17, v7, v13

    move/from16 v0, v17

    if-ge v3, v0, :cond_16

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v17, v11

    check-cast v17, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v14

    goto :goto_2

    :cond_b
    move-object/from16 v17, v5

    check-cast v17, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v8

    goto :goto_3

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    if-ne v14, v8, :cond_7

    const/16 v17, 0x10

    return v17

    :cond_d
    const/4 v13, 0x0

    move-object v4, v14

    :goto_5
    if-eqz v4, :cond_8

    add-int/lit8 v13, v13, 0x1

    if-eq v4, v8, :cond_e

    move-object v11, v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_5

    :cond_e
    const/16 v17, 0x1

    return v17

    :cond_f
    const/4 v7, 0x0

    move-object v4, v8

    :goto_6
    if-eqz v4, :cond_9

    add-int/lit8 v7, v7, 0x1

    if-eq v4, v14, :cond_10

    move-object v5, v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_6

    :cond_10
    const/16 v17, 0x2

    return v17

    :cond_11
    const/16 v17, 0x0

    return v17

    :cond_12
    const/4 v3, 0x0

    :goto_7
    sub-int v17, v13, v7

    move/from16 v0, v17

    if-ge v3, v0, :cond_13

    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    if-eq v14, v8, :cond_15

    :cond_14
    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    :goto_8
    if-eq v15, v9, :cond_17

    move-object v14, v15

    move-object v8, v9

    invoke-interface {v15}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    goto :goto_8

    :cond_15
    const/16 v17, 0x1

    return v17

    :cond_16
    if-ne v8, v14, :cond_14

    const/16 v17, 0x2

    return v17

    :cond_17
    invoke-interface {v15}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_9
    if-eqz v2, :cond_1a

    if-eq v2, v8, :cond_18

    if-eq v2, v14, :cond_19

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_9

    :cond_18
    const/16 v17, 0x1

    return v17

    :cond_19
    const/16 v17, 0x2

    return v17

    :cond_1a
    const/16 v17, 0x0

    return v17
.end method

.method public dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method protected getContainer()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object v3
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method protected getNodeNumber()I
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber(Lmf/org/w3c/dom/Node;)I

    move-result v1

    return v1
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/w3c/dom/Document;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final hasStringValue(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x81

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x80

    goto :goto_0
.end method

.method final hasStringValue()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method final internalIsIgnorableWhitespace()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_a

    return v9

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_8

    return v9

    :cond_3
    if-eq v3, p1, :cond_4

    return v9

    :cond_4
    return v10

    :cond_5
    move-object v2, p0

    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v8, "xmlns"

    invoke-virtual {v2, v7, v8}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7

    :cond_6
    if-eq v3, v6, :cond_7

    return v9

    :cond_7
    return v10

    :cond_8
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    return v7

    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    return v7

    :pswitch_3
    return v9

    :pswitch_4
    iget-object v7, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v7

    if-eq v7, v10, :cond_9

    return v9

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    return v7

    :cond_a
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_4
    return v3

    :cond_5
    return v3

    :cond_6
    return v2

    :cond_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_8
    return v2

    :cond_9
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_a
    return v2

    :cond_b
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return v2

    :cond_c
    return v2

    :cond_d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_e
    return v2

    :cond_f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    :cond_10
    return v2
.end method

.method final isFirstChild(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x11

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method final isFirstChild()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isIdAttribute(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x201

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x200

    goto :goto_0
.end method

.method final isIdAttribute()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isIgnorableWhitespace(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x41

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method final isNormalized(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x101

    :goto_1
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x100

    goto :goto_1
.end method

.method final isNormalized()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isOwned(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x9

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method final isOwned()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isReadOnly(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x2

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final isReadOnly()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isSpecified(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x21

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method final isSpecified()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v11

    if-nez v11, :cond_3

    :cond_1
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_8

    const/4 v11, 0x0

    return-object v11

    :cond_2
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    return-object v9

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-interface {v7, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    return-object v6

    :cond_7
    if-eqz v2, :cond_4

    const-string/jumbo v11, "xmlns"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_1

    :cond_8
    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v10, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_e

    return-object v10

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v11

    if-nez v11, :cond_5

    :cond_1
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_c

    return-object v10

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    return-object v6

    :cond_4
    if-ne v7, p1, :cond_3

    return-object v6

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-interface {v5, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p1, :cond_9

    :cond_8
    if-eqz v2, :cond_6

    const-string/jumbo v11, "xmlns"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_b

    :goto_1
    return-object v10

    :cond_9
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_a

    move-object v9, v10

    :cond_a
    return-object v9

    :cond_b
    move-object v10, v9

    goto :goto_1

    :cond_c
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    :pswitch_3
    return-object v10

    :pswitch_4
    iget-object v11, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    return-object v10

    :cond_d
    iget-object v10, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_e
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_2

    return-object v4

    :cond_0
    return-object v4

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_3
    return-object v4

    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    return-object v4

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final needsSyncChildren(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x5

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method final needsSyncChildren()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final needsSyncData(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x3

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method final needsSyncData()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    return-object v0
.end method

.method parentNode()Lmf/org/apache/xerces/dom/NodeImpl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method previousSibling()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NOT_FOUND_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
