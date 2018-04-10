.class public Lcom/sun/org/apache/xml/internal/security/signature/Reference;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field public static CacheSignedNodes:Z = false

.field public static final MANIFEST_URI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#Manifest"

.field public static final OBJECT_URI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#Object"

.field static synthetic class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

.field _transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->CacheSignedNodes:Z

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.signature.Reference"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setURI(Ljava/lang/String;)V

    if-nez p5, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v1, p6}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "DigestValue"

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p5}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    return-void
.end method

.method private calculateDigest()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getMessageDigestAlgorithm()Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->reset()V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;-><init>(Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;)V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->updateOutputStream(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->getDigestValue()[B
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v5, "empty"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v5, "empty"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
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

.method private getContentsAfterTransformation(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private setDigestValueElement([B)V
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v5, "DigestValue"

    invoke-static {v4, v5, v6}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v4, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method protected dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsAfterTransformation(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v1

    sget-boolean v2, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->CacheSignedNodes:Z

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public generateDigestValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->calculateDigest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setDigestValueElement([B)V

    goto :goto_0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Reference"

    return-object v0
.end method

.method public getContentsAfterTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsAfterTransformation(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v1

    return-object v1
.end method

.method public getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v5, 0x0

    const-string/jumbo v6, "URI"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    invoke-static {v0, v4, v5}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;Ljava/util/List;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iget-object v4, v4, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->addProperties(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v5, "signature.Verification.Reference.NoInput"

    invoke-direct {v4, v5, v3}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v5, "empty"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v5, "empty"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public getDigestValue()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "DigestValue"

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "DigestValue"

    aput-object v2, v1, v4

    const-string/jumbo v2, "http://www.w3.org/2000/09/xmldsig#"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v3, "signature.Verification.NoSignatureElement"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getHTMLRepresentation()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getNodesetBeforeFirstCanonicalization()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getHTMLRepresentation(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_0

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getURI()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    move-object v3, v6

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string/jumbo v9, "InclusiveNamespaces"

    invoke-virtual {v3, v8, v9}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    new-instance v5, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string/jumbo v10, "InclusiveNamespaces"

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->getInclusiveNamespaces()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v8, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v9, "empty"

    invoke-direct {v8, v9, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    :catch_1
    move-exception v0

    new-instance v8, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v9, "empty"

    invoke-direct {v8, v9, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    :catch_2
    move-exception v0

    new-instance v8, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v9, "empty"

    invoke-direct {v8, v9, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string/jumbo v2, "Id"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDigestAlgorithm()Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "DigestMethod"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "Algorithm"

    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v2, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v5

    :cond_1
    return-object v5
.end method

.method public getNodesetBeforeFirstCanonicalization()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->getLength()I

    move-result v6

    if-lt v3, v6, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v7, "empty"

    invoke-direct {v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :cond_2
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->performTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v7, "empty"

    invoke-direct {v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_2
    move-exception v0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v7, "empty"

    invoke-direct {v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_3
    move-exception v0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v7, "empty"

    invoke-direct {v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_4
    move-exception v0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v7, "empty"

    invoke-direct {v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_5
    move-exception v0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v7, "empty"

    invoke-direct {v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method public getReferencedBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "Transforms"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public getTransformsInput()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getTransformsOutput()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->_transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string/jumbo v2, "Type"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string/jumbo v2, "URI"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Id"

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Type"

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "URI"

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public typeIsReferenceToManifest()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#Manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public typeIsReferenceToObject()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public verify()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getDigestValue()[B

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->calculateDigest()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->isEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Verification failed for URI \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Verification successful for URI \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method
