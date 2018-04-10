.class public abstract Lmf/org/apache/xerces/dom/ParentNode;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "ParentNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x2713d65863899c28L


# instance fields
.field protected transient fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

.field protected firstChild:Lmf/org/apache/xerces/dom/ChildNode;

.field protected ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/dom/ParentNode;)I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/dom/ParentNode;I)Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private nodeListGetLength()I
    .locals 5

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    if-eq v2, v4, :cond_4

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    return v2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    if-ne v2, v4, :cond_6

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x0

    :goto_3
    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v0, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v0, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    goto :goto_1
.end method

.method private nodeListItem(I)Lmf/org/w3c/dom/Node;
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v4, :cond_2

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v1, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v2, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x1

    if-ne v1, v6, :cond_6

    :cond_0
    if-ltz p1, :cond_9

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v1, 0x0

    :goto_1
    if-lt v1, p1, :cond_a

    :cond_1
    :goto_2
    if-eqz v0, :cond_b

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v1, v3, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v2, v3, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_4
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_5
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v5

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    :goto_6
    return-object v3

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_6

    :cond_6
    if-eqz v2, :cond_0

    const/4 v0, 0x0

    if-lt v1, p1, :cond_8

    if-le v1, p1, :cond_1

    :goto_7
    if-le v1, p1, :cond_1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v2

    goto :goto_7

    :cond_7
    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_8
    if-lt v1, p1, :cond_7

    goto :goto_2

    :cond_9
    return-object v3

    :cond_a
    if-eqz v2, :cond_1

    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v2, v4, :cond_d

    :cond_c
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v6, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v3, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->freeNodeListCache(Lmf/org/apache/xerces/dom/NodeListCache;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v4

    if-eq v2, v4, :cond_c

    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v1

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_1
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0
.end method

.method checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 3

    const/4 v2, 0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez p1, :cond_2

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ChildNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/ParentNode;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0
.end method

.method protected final getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/dom/ParentNode$1;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/ParentNode$1;-><init>(Lmf/org/apache/xerces/dom/ParentNode;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v0

    return v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->getTextContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->hasTextContent(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_0
    return-object v3

    :cond_2
    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->hasTextContent(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public hasChildNodes()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v0, :cond_1

    return v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method final hasTextContent(Lmf/org/w3c/dom/Node;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    check-cast p1, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/TextImpl;->isIgnorableWhitespace()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/ParentNode;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v10, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/16 v11, 0xb

    if-eq v10, v11, :cond_2

    move-object/from16 v0, p2

    if-eq p1, v0, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v10

    if-nez v10, :cond_8

    :goto_0
    if-nez v2, :cond_9

    :cond_0
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move/from16 v0, p3

    invoke-virtual {v10, p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v6

    if-nez v6, :cond_13

    :goto_1
    move-object/from16 v8, p2

    check-cast v8, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p0, v5, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v10, :cond_14

    if-eqz v8, :cond_15

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p2

    if-eq v0, v10, :cond_16

    iget-object v7, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v5, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, v7, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v7, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->changed()V

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v10, :cond_17

    :cond_1
    :goto_3
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move/from16 v0, p3

    invoke-virtual {v10, p0, v5, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/ParentNode;->checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    return-object p1

    :cond_2
    if-nez v2, :cond_4

    :cond_3
    :goto_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_3

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, p0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_5

    :cond_5
    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "HIERARCHY_REQUEST_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v10, v12, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_6
    return-object p1

    :cond_7
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual/range {p0 .. p2}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object p1

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v10

    iget-object v11, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-ne v10, v11, :cond_e

    :cond_a
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_f

    if-nez p2, :cond_10

    :cond_b
    const/4 v9, 0x1

    move-object v1, p0

    :goto_6
    if-nez v9, :cond_11

    :cond_c
    if-nez v9, :cond_0

    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "HIERARCHY_REQUEST_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v10, v12, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_d
    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_e
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq p1, v10, :cond_a

    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "WRONG_DOCUMENT_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v10, v12, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_f
    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "HIERARCHY_REQUEST_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v10, v12, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_10
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v10

    if-eq v10, p0, :cond_b

    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "NOT_FOUND_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    invoke-direct {v10, v12, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_11
    if-eqz v1, :cond_c

    if-ne p1, v1, :cond_12

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v1

    goto :goto_6

    :cond_12
    const/4 v9, 0x1

    goto :goto_7

    :cond_13
    invoke-interface {v6, v5}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_1

    :cond_14
    iput-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v5, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_2

    :cond_15
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v4, v10, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v4, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, v10, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_2

    :cond_16
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v10, v5, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v10, v10, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v10, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, v10, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto/16 :goto_2

    :cond_17
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v10, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_18

    :goto_8
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v10, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v10, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eq v10, v8, :cond_19

    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    const/4 v11, -0x1

    iput v11, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto/16 :goto_3

    :cond_18
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v11, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    goto :goto_8

    :cond_19
    iget-object v10, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v5, v10, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_3
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    iget-boolean v5, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v5, :cond_3

    :cond_0
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3, p0, v1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v5, :cond_5

    :cond_1
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eq v1, v5, :cond_8

    iget-object v4, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_9

    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v2

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v8, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->changed()V

    invoke-virtual {v3, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ParentNode;->checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    if-eq v5, p0, :cond_0

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NOT_FOUND_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-direct {v5, v7, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_4
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-direct {v5, v7, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    if-ne v5, v9, :cond_6

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    if-eq v5, v9, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eq v5, v1, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v9, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v6

    iput-object v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v5, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v6, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v4, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_1
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    return v3
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public normalize()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    return-void
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/ParentNode;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/dom/ParentNode;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    if-ne p1, p2, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    return-object p2

    :cond_0
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/ParentNode;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    goto :goto_2
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1
.end method

.method protected synchronizeChildren()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    return-void
.end method
