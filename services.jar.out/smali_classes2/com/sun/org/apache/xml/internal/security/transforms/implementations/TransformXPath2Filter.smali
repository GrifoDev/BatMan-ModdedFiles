.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath2Filter;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/2002/06/xmldsig-filter2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2002/06/xmldsig-filter2"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    iget-object v11, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v11}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->setDoc(Lorg/w3c/dom/Document;)V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->getCachedXPathAPI()Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;-><init>(Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;)V

    iget-object v11, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v11}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    const-string/jumbo v12, "http://www.w3.org/2002/06/xmldsig-filter2"

    const-string/jumbo v13, "XPath"

    invoke-static {v11, v12, v13}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object v9

    :goto_0
    const/4 v10, 0x0

    :goto_1
    if-lt v10, v8, :cond_2

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNeedsToBeExpanded(Z)V

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;

    invoke-direct {v11, v3, v4, v5}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v11}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNodeSet(Z)V

    return-object p1

    :cond_0
    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v11, "http://www.w3.org/2002/06/xmldsig-filter2"

    const/4 v12, 0x0

    aput-object v11, v9, v12

    const-string/jumbo v11, "XPath"

    const/4 v12, 0x1

    aput-object v11, v9, v12

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "xml.WrongContent"

    invoke-direct {v11, v12, v9}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_7

    :catch_0
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v9

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v11}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    const-string/jumbo v12, "http://www.w3.org/2002/06/xmldsig-filter2"

    const-string/jumbo v13, "XPath"

    invoke-static {v11, v12, v13, v10}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->newInstance(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->getXPathFilterTextNode()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->getXPathFilterTextNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-virtual {v6, v9, v11, v12, v13}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->isIntersect()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->isSubtract()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->isUnion()Z

    move-result v11

    if-nez v11, :cond_5

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_2

    :catch_1
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :cond_4
    :try_start_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_2

    :catch_2
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :cond_5
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_2

    :catch_3
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :catch_4
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :catch_5
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :catch_6
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :catch_7
    move-exception v3

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v12, "empty"

    invoke-direct {v11, v12, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11
.end method
