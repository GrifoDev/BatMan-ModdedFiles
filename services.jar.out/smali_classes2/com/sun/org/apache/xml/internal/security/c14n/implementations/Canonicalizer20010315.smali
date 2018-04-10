.class public abstract Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;


# static fields
.field static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field static final XML_LANG_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field firstCall:Z

.field final result:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->firstCall:Z

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->result:Ljava/util/SortedSet;

    return-void
.end method

.method private addXmlAttributes(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V
    .locals 10

    const/4 v9, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v9, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_3

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {p1, v8, v7}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private addXmlAttributesSubtree(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V
    .locals 10

    const/4 v9, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v9, :cond_0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v9, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_3

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {p1, v8, v7}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v1, "c14n.Canonicalizer.UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v1, "c14n.Canonicalizer.UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleAttributes(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v17

    if-nez v17, :cond_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->result:Ljava/util/SortedSet;

    invoke-interface {v12}, Ljava/util/Set;->clear()V

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v11, :cond_1

    if-nez v9, :cond_6

    :goto_2
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    return-object v17

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    goto :goto_0

    :cond_1
    invoke-interface {v10, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Attr;

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v17, "http://www.w3.org/2000/xmlns/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, "xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v17

    if-nez v17, :cond_5

    :cond_2
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_2

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const-string/jumbo v17, "http://www.w3.org/XML/1998/namespace"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    goto :goto_3

    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5, v15, v9}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRenderXNodeSet(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Lorg/w3c/dom/Attr;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v8, v18

    const/16 v17, 0x1

    aput-object v16, v8, v17

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v8, v18

    new-instance v17, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v18, "c14n.Canonicalizer.RelativeNamespace"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v17

    :cond_6
    const-string/jumbo v17, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v18, "xmlns"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v17

    if-eqz v17, :cond_8

    :goto_5
    if-nez v15, :cond_9

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->addXmlAttributes(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v17, "xmlns"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v15

    :goto_7
    goto :goto_5

    :cond_8
    sget-object v17, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    const-string/jumbo v18, "xmlns"

    const-string/jumbo v19, ""

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRenderXNodeSet(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;Z)Lorg/w3c/dom/Node;

    move-result-object v15

    goto :goto_7

    :cond_9
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method handleAttributesSubtree(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->result:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_2

    iget-boolean v10, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->firstCall:Z

    if-nez v10, :cond_7

    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    return-object v10

    :cond_1
    iget-boolean v10, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->firstCall:Z

    if-nez v10, :cond_0

    return-object v12

    :cond_2
    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "xml"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    :goto_2
    invoke-virtual {p2, v8, v9, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRender(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string/jumbo v10, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_6
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Lorg/w3c/dom/Attr;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v11

    const/4 v10, 0x1

    aput-object v8, v2, v10

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v2, v11

    new-instance v10, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v11, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v10, v11, v2}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    :cond_7
    invoke-virtual {p2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getUnrenderedNodes(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->addXmlAttributesSubtree(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V

    iput-boolean v11, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;->firstCall:Z

    goto :goto_1
.end method
