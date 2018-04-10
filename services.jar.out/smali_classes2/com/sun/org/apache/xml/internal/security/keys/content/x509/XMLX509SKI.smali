.class public Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509DataContent;


# static fields
.field public static final SKI_OID:Ljava/lang/String; = "2.5.29.14"

.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

.field static synthetic class$java$io$InputStream:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509SKI"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->getSKIBytesFromCert(Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBase64Text([B)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBase64Text([B)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

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

.method public static getSKIBytesFromCert(Ljava/security/cert/X509Certificate;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v11, "2.5.29.14"

    invoke-interface {p0, v11}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_1

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v1}, Lsun/security/util/DerValue;-><init>([B)V

    if-eqz v3, :cond_2

    iget-byte v11, v3, Lsun/security/util/DerValue;->tag:B

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getOctetString()[B
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    :cond_0
    :goto_1
    :try_start_2
    array-length v11, v2

    add-int/lit8 v11, v11, -0x2

    new-array v3, v11, [B

    array-length v11, v3

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v2, v12, v3, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-nez v11, :cond_8

    :goto_2
    return-object v3

    :cond_1
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    const/4 v12, 0x0

    aput-object v11, v2, v12

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v12, "certificate.noSki.lowVersion"

    invoke-direct {v11, v12, v2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v12, "generic.EmptyMessage"

    invoke-direct {v11, v12, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    :cond_2
    :try_start_3
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v12, "certificate.noSki.null"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_3
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v12, "certificate.noSki.notOctetString"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :try_start_4
    const-string/jumbo v11, "org.bouncycastle.asn1.DERInputStream"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$java$io$InputStream:Ljava/lang/Class;

    const/4 v13, 0x0

    if-eqz v11, :cond_5

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$java$io$InputStream:Ljava/lang/Class;

    :goto_3
    aput-object v11, v12, v13

    invoke-virtual {v3, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    const-string/jumbo v12, "readObject"

    invoke-virtual {v3, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string/jumbo v11, "org.bouncycastle.asn1.ASN1OctetString"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    const-string/jumbo v12, "getOctets"

    invoke-virtual {v9, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v11, "java.io.InputStream"

    invoke-static {v11}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->class$java$io$InputStream:Ljava/lang/Class;

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v3, v4

    goto/16 :goto_1

    :cond_6
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v12, "certificate.noSki.null"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v12, "certificate.noSki.notOctetString"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    :try_start_5
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Base64 of SKI is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    :try_start_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->getSKIBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->getSKIBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    return v4

    :catch_0
    move-exception v1

    return v4
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "X509SKI"

    return-object v0
.end method

.method public getSKIBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBytesFromTextChild()[B

    move-result-object v0

    return-object v0
.end method
