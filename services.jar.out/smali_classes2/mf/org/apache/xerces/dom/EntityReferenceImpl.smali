.class public Lmf/org/apache/xerces/dom/EntityReferenceImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/EntityReference;


# static fields
.field static final serialVersionUID:J = -0x6670305ac5fca66eL


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-object v4

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/EntityImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Lmf/org/apache/xerces/util/URI;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    return-object v6
.end method

.method protected getEntityRefValue()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    const-string/jumbo v2, ""

    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-eq v3, v5, :cond_3

    return-object v4

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v1, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-eq v3, v6, :cond_5

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-eq v3, v5, :cond_6

    return-object v4

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    move-object v3, v1

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setReadOnly(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    if-nez p2, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_2
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeChildren()V

    goto :goto_1
.end method

.method protected synchronizeChildren()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/EntityImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0, v7}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v7, v7}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method
