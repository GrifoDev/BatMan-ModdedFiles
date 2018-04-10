.class public Lcom/sun/org/apache/xml/internal/security/signature/Manifest;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _perManifestResolvers:Ljava/util/List;

.field _references:Ljava/util/List;

.field _referencesEl:[Lorg/w3c/dom/Element;

.field _resolverProperties:Ljava/util/HashMap;

.field _signedContents:Ljava/util/List;

.field private verificationResults:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.signature.Manifest"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_signedContents:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_signedContents:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    const-string/jumbo v4, "Reference"

    invoke-static {v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v0, v3

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Reference"

    aput-object v3, v2, v5

    const-string/jumbo v3, "Manifest"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lorg/w3c/dom/DOMException;

    const-string/jumbo v4, "xml.WrongContent"

    invoke-static {v4, v2}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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

.method private setVerificationResult(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    aput-boolean p2, v0, p1

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    goto :goto_0
.end method


# virtual methods
.method public addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V

    if-nez p5, :cond_1

    :goto_1
    if-nez p6, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p6}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setType(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;-><init>(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public generateDigestValues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->generateDigestValue()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Manifest"

    return-object v0
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

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReferencedContentAfterTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsAfterTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getReferencedContentBeforeTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getResolverProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSignedContentItem(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getReferencedContentAfterTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSignedContentLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v0

    return v0
.end method

.method public getVerificationResult(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "signature.Verification.IndexOutOfBounds"

    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v3, "generic.EmptyMessage"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    aget-boolean v2, v2, p1

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v3, "generic.EmptyMessage"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-object v1

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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

.method public setResolverProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public verifyReferences()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences(Z)Z

    move-result v0

    return v0
.end method

.method public verifyReferences(Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    if-eqz v13, :cond_0

    :goto_0
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-nez v13, :cond_1

    :goto_1
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-nez v13, :cond_2

    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v13, v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v13, v13

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v13, v13

    if-lt v4, v13, :cond_5

    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    const-string/jumbo v14, "Reference"

    invoke-static {v13, v14}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_1
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v16, "verify "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string/jumbo v16, " References"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v14, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v16, "I am "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    if-nez p1, :cond_3

    const-string/jumbo v13, "not"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string/jumbo v16, " requested to follow nested Manifests"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v13, ""

    goto :goto_4

    :cond_4
    new-instance v13, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v14, "empty"

    invoke-direct {v13, v14}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_5
    new-instance v5, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v13, v14, v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v13, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->verify()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->setVerificationResult(IZ)V

    if-eqz v6, :cond_7

    :goto_5
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-nez v13, :cond_8

    :goto_6
    if-nez v3, :cond_9

    :cond_6
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v16, "The Reference has Type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v7

    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getURI()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v8, v14

    new-instance v13, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;

    const-string/jumbo v14, "signature.Verification.Reference.NoInput"

    invoke-direct {v13, v14, v8, v7, v5}, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V

    throw v13

    :cond_9
    if-eqz p1, :cond_6

    :try_start_1
    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->typeIsReferenceToManifest()Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-nez v13, :cond_b

    :goto_8
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v5, v13}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_c

    :goto_a
    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iput-object v13, v10, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    iput-object v13, v10, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v15, "The nested Manifest was valid (good)"

    invoke-virtual {v13, v14, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_1
    move-exception v8

    :try_start_3
    new-instance v13, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v14, "empty"

    invoke-direct {v13, v14, v8}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    :cond_b
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v15, "We have to follow a nested Manifest"

    invoke-virtual {v13, v14, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :cond_c
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v13, v0

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v13, v0

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Manifest"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v13

    if-eqz v13, :cond_a

    :try_start_5
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v2, v13}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v10, v11

    goto :goto_a

    :cond_d
    :try_start_6
    new-instance v13, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;

    const-string/jumbo v14, "empty"

    invoke-direct {v13, v14, v5}, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V

    throw v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v8

    :try_start_7
    new-instance v13, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v14, "empty"

    invoke-direct {v13, v14, v8}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_7
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_e
    const/4 v3, 0x0

    :try_start_8
    sget-object v13, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v15, "The nested Manifest was invalid (bad)"

    invoke-virtual {v13, v14, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_7

    :catch_3
    move-exception v8

    :try_start_9
    new-instance v13, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v14, "empty"

    invoke-direct {v13, v14, v8}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_9
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_4
    move-exception v13

    goto/16 :goto_9
.end method
