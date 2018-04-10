.class final Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;
.super Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;
.source "XSLoaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XSGrammarMerger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;-><init>()V

    return-void
.end method

.method private mergeSchemaGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 11

    const/4 v10, 0x2

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    invoke-interface {v9, v7}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v10

    if-eqz v10, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_3

    invoke-interface {v9, v7}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v10

    if-eqz v10, :cond_2

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    goto :goto_3

    :cond_3
    const/4 v10, 0x3

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_5

    invoke-interface {v9, v7}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    if-eqz v10, :cond_4

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_5

    :cond_5
    const/4 v10, 0x5

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_7

    invoke-interface {v9, v7}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v10

    if-eqz v10, :cond_6

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    goto :goto_7

    :cond_7
    const/4 v10, 0x7

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v8, :cond_9

    invoke-interface {v9, v7}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v10

    if-eqz v10, :cond_8

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    goto :goto_9

    :cond_9
    const/16 v10, 0xb

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v8, :cond_b

    invoke-interface {v9, v7}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v10

    if-eqz v10, :cond_a

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v8, :cond_c

    invoke-interface {v0, v7}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_c
    return-void
.end method

.method private toSchemaGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    goto :goto_0
.end method


# virtual methods
.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 3

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v2

    invoke-super {p0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;->toSchemaGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;->toSchemaGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;->mergeSchemaGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object v0
.end method
