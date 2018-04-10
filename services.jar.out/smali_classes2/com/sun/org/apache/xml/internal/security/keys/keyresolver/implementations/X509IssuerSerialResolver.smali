.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509IssuerSerialResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509IssuerSerialResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509IssuerSerialResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.X509IssuerSerialResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509IssuerSerialResolver:Ljava/lang/Class;

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


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 7

    const/4 v6, 0x0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->containsIssuerSerial()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_1
    return v6

    :cond_0
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

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

    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    return v6

    :cond_1
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "I can\'t"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_3
    return v6

    :cond_2
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "I can\'t"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4
    return v6

    :cond_4
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "I can\'t"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    return v2

    :cond_6
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "I can\'t"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v11, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthIssuerSerial()I

    move-result v1

    :cond_0
    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    return-object v11

    :cond_1
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "X509IssuerSerial"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v7, "KeyResolver.needStorageResolver"

    invoke-direct {v2, v7, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_0
    throw v2
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_1
    new-instance v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v8, "generic.EmptyMessage"

    invoke-direct {v7, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_2
    :try_start_1
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->next()Ljava/security/cert/X509Certificate;

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->itemIssuerSerial(I)Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_5
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_6
    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_a

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Found Certificate Issuer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;->getIssuerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Found Certificate Serial: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Found Element Issuer:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;->getIssuerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Found Element Serial:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_9

    :goto_8
    return-object v3

    :cond_9
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v9, "match !!! "

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v9, "no match..."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :cond_b
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509IssuerSerialResolver;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v9, "XMLSecurityException"

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
