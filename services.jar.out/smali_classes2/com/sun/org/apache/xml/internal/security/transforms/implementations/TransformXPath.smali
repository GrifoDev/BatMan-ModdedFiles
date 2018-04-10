.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;
    }
.end annotation


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class; = null

.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xpath-19991116"

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.TransformXPath"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private needsCircunvent(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/TR/1999/REC-xpath-19991116"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->setDoc(Lorg/w3c/dom/Document;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    const-string/jumbo v4, "XPath"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;->needsCircunvent(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNeedsToBeExpanded(Z)V

    if-eqz v1, :cond_1

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;-><init>(Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNodeSet(Z)V

    return-object p1

    :cond_0
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "ds:XPath"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "Transform"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v4, "xml.WrongContent"

    invoke-direct {v3, v4, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_1
    :try_start_1
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x3

    const-string/jumbo v5, "Text must be in ds:Xpath"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0
.end method
