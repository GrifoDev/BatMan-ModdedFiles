.class public Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
.super Ljava/lang/Object;
.source "XSGrammarBucket.java"


# instance fields
.field fGrammarRegistry:Ljava/util/Hashtable;

.field fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method


# virtual methods
.method public getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object v0
.end method

.method public getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int v0, v6, v5

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v5, v1, v3

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v5, :cond_2

    :goto_1
    return-object v1

    :cond_2
    add-int/lit8 v5, v0, -0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v6, v1, v5

    goto :goto_1
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    goto :goto_0
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    if-eqz v7, :cond_5

    if-ne v7, v6, :cond_7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, p1, :cond_2

    return v9

    :cond_2
    return v10

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return v10

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return v10

    :cond_5
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    return v9

    :cond_8
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_3
    if-ltz v3, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_9
    return v10
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z
    .locals 10

    const/4 v9, 0x1

    if-eqz p3, :cond_1

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    if-eqz v5, :cond_2

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v8

    return v8

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    :cond_3
    return v9

    :cond_4
    return v9

    :cond_5
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_2
    if-ltz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_4
    if-ltz v3, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    return v9
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
