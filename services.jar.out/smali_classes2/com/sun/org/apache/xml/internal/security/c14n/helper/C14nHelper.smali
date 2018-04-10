.class public Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotRelativeNS(Lorg/w3c/dom/Attr;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "xmlns"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v6, "xmlns:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Lorg/w3c/dom/Attr;)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v7, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v6, v7, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public static checkForRelativeNamespace(Lorg/w3c/dom/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "Called checkForRelativeNamespace() on null"

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->assertNotRelativeNS(Lorg/w3c/dom/Attr;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkTraversability(Lorg/w3c/dom/Document;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v1, "Traversal"

    const-string/jumbo v2, "2.0"

    invoke-interface {p0, v1, v2}, Lorg/w3c/dom/Node;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "c14n.Canonicalizer.TraversalNotSupported"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static namespaceIsAbsolute(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gtz v2, :cond_1

    :goto_0
    return v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static namespaceIsAbsolute(Lorg/w3c/dom/Attr;)Z
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsAbsolute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static namespaceIsRelative(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsAbsolute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static namespaceIsRelative(Lorg/w3c/dom/Attr;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsAbsolute(Lorg/w3c/dom/Attr;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
