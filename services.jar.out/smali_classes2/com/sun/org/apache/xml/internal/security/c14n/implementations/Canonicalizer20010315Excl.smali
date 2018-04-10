.class public abstract Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;


# static fields
.field static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field _inclusiveNSSet:Ljava/util/TreeSet;

.field final result:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->result:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    invoke-super {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B

    move-result-object v0

    return-object v0
.end method

.method final handleAttributes(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->result:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v12

    if-nez v12, :cond_2

    :goto_0
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-lt v9, v6, :cond_4

    if-nez v8, :cond_a

    iget-object v12, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    invoke-virtual {v12}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_11

    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    return-object v12

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    invoke-virtual {v12}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    goto :goto_1

    :cond_4
    invoke-interface {v5, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Attr;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v11}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v11}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    :goto_5
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string/jumbo v12, "xml"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x3

    new-array v3, v12, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v3, v13

    const/4 v12, 0x1

    aput-object v1, v3, v12

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v3, v13

    new-instance v12, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v13, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v12, v13, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_a
    const-string/jumbo v12, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v13, "xmlns"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    if-nez v10, :cond_d

    :cond_b
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_e

    const-string/jumbo v12, "xmlns"

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {p0, v10}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-nez v12, :cond_b

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    const-string/jumbo v13, "xmlns"

    const-string/jumbo v14, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v12}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    goto :goto_6

    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_10

    :cond_f
    const-string/jumbo v12, "xmlns"

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMappingWithoutRendered(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method handleAttributesSubtree(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->result:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v10

    if-nez v10, :cond_1

    :goto_0
    iget-object v10, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->_inclusiveNSSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/SortedSet;

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v4, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    const-string/jumbo v10, "xmlns"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    return-object v10

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Attr;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p2, v9, v0, v8}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string/jumbo v10, "xml"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v12

    const/4 v10, 0x1

    aput-object v9, v1, v10

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    new-instance v10, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v11, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v10, v11, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    :cond_9
    const-string/jumbo v10, "xmlns"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method
