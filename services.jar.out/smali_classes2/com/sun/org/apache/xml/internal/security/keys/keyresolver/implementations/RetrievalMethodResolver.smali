.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RetrievalMethodResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RetrievalMethodResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RetrievalMethodResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RetrievalMethodResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RetrievalMethodResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

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

.method static getFirstElementChild(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "RetrievalMethod"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 15

    :try_start_0
    new-instance v5, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getURIAttr()Lorg/w3c/dom/Attr;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    const/4 v11, 0x0

    return-object v11

    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v9, v6, v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v10

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_3

    :goto_1
    if-nez v8, :cond_4

    :goto_2
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_6

    :goto_3
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_7

    :goto_4
    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v2

    if-nez v7, :cond_8

    :cond_2
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_9

    :goto_5
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->getDocFromBytes([B)Lorg/w3c/dom/Element;

    move-result-object v3

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_a

    :goto_6
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->getFirstElementChild(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->getFirstElementChild(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v11, v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v11

    return-object v11

    :cond_3
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Before applying Transforms, resource has "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string/jumbo v14, "bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v13, "XMLSecurityException"

    invoke-virtual {v11, v12, v13, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_5

    :goto_7
    invoke-virtual {v8, v10}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v10

    goto/16 :goto_2

    :cond_5
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v13, "We have Transforms"

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_1
    move-exception v5

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v13, "CertificateException"

    invoke-virtual {v11, v12, v13, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "After applying Transforms, resource has "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string/jumbo v14, "bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v5

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v13, "IOException"

    invoke-virtual {v11, v12, v13, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Resolved to resource "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v11, "http://www.w3.org/2000/09/xmldsig#rawX509Certificate"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    return-object v11

    :cond_9
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "we have to parse "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    array-length v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string/jumbo v14, " bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Now we have a {"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string/jumbo v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string/jumbo v14, " Element"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 12

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;

    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getURIAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v4

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_0
    invoke-static {v3, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    :goto_1
    const/4 v8, 0x0

    return-object v8

    :cond_1
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "Asked to resolve URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v10, "XMLSecurityException"

    invoke-virtual {v8, v9, v10, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v5, v3, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v6

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    if-nez v4, :cond_5

    :goto_3
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_7

    :goto_4
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_8

    :goto_5
    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getType()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    :cond_3
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_a

    :goto_6
    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->getDocFromBytes([B)Lorg/w3c/dom/Element;

    move-result-object v0

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_b

    :goto_7
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->getFirstElementChild(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->getFirstElementChild(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-virtual {v1, v8, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    return-object v8

    :cond_4
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "Before applying Transforms, resource has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, "bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v10, "CertificateException"

    invoke-virtual {v8, v9, v10, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    :try_start_2
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_6

    :goto_8
    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v6

    goto/16 :goto_3

    :cond_6
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v10, "We have Transforms"

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v2

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v10, "IOException"

    invoke-virtual {v8, v9, v10, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    :try_start_3
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "After applying Transforms, resource has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, "bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "Resolved to resource "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;->getType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#rawX509Certificate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    return-object v1

    :cond_a
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "we have to parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    array-length v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    sget-object v8, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RetrievalMethodResolver;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "Now we have a {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " Element"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7
.end method

.method getDocFromBytes([B)Lorg/w3c/dom/Element;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_2
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
