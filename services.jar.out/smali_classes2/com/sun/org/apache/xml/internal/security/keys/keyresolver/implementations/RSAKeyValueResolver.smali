.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _rsaKeyElement:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RSAKeyValueResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

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


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    const-string/jumbo v2, "KeyValue"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "RSAKeyValue"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_0
    return v6

    :cond_1
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Can I resolve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v6

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "RSAKeyValue"

    invoke-static {v2, v3, v6}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    return v7

    :cond_4
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    return v7
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    :goto_0
    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    invoke-direct {v1, v2, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v5

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return-object v5

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "XMLSecurityException"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
