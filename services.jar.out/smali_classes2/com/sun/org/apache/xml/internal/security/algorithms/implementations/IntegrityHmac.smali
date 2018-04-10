.class public abstract Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacMD5;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacRIPEMD160;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA1;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA256;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA384;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA512;
    }
.end annotation


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

.field static synthetic class$javax$crypto$SecretKey:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _HMACOutputLength:I

.field private _macAlgorithm:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac$IntegrityHmacSHA1"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    iput v7, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->engineGetURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Created IntegrityHmacSHA1 using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.NoSuchAlgorithm"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
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

.method private static reduceBitLength([BI)[B
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    move v4, v5

    :goto_0
    add-int/2addr v4, v0

    new-array v2, v4, [B

    invoke-static {p0, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gtz v1, :cond_1

    :goto_1
    return-object v2

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    new-array v3, v4, [B

    aput-byte v6, v3, v6

    const/16 v4, -0x80

    aput-byte v4, v3, v5

    const/16 v4, -0x40

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/16 v4, -0x20

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    const/16 v4, -0x10

    const/4 v5, 0x4

    aput-byte v4, v3, v5

    const/4 v4, -0x8

    const/4 v5, 0x5

    aput-byte v4, v3, v5

    const/4 v4, -0x4

    const/4 v5, 0x6

    aput-byte v4, v3, v5

    const/4 v4, -0x2

    const/4 v5, 0x7

    aput-byte v4, v3, v5

    aget-byte v4, p0, v0

    aget-byte v5, v3, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    goto :goto_1
.end method


# virtual methods
.method public engineAddContextToElement(Lorg/w3c/dom/Element;)V
    .locals 5

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "null element"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v3, "HMACOutputLength"

    invoke-static {v0, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected engineGetContextFromElement(Lorg/w3c/dom/Element;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetContextFromElement(Lorg/w3c/dom/Element;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "HMACOutputLength"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Text;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "element null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    goto :goto_0
.end method

.method protected engineGetJCEAlgorithmString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "engineGetJCEAlgorithmString()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected engineGetJCEProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract engineGetURI()Ljava/lang/String;
.end method

.method protected engineInitSign(Ljava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p1, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "javax.crypto.SecretKey"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "algorithms.CannotUseSecureRandomOnMAC"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p1, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "javax.crypto.SecretKey"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected engineInitVerify(Ljava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p1, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "javax.crypto.SecretKey"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected engineSetHMACOutputLength(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "empty"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    const/16 v2, 0xa0

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->reduceBitLength([BI)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update(B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineVerify([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->isEqual([B[B)Z

    move-result v2

    return v2

    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    const/16 v3, 0xa0

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-static {v0, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->reduceBitLength([BI)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->isEqual([B[B)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
