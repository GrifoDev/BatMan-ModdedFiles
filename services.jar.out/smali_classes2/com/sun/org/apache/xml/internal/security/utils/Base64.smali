.class public Lcom/sun/org/apache/xml/internal/security/utils/Base64;
.super Ljava/lang/Object;


# static fields
.field public static final BASE64DEFAULTLENGTH:I = 0x4c

.field private static final BASELENGTH:I = 0xff

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field static _base64length:I

.field private static final base64Alphabet:[B

.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

.field private static final fDebug:Z

.field static log:Ljava/util/logging/Logger;

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x30

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->log:Ljava/util/logging/Logger;

    const/16 v2, 0x4c

    sput v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->_base64length:I

    const/16 v2, 0xff

    new-array v2, v2, [B

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xff

    if-lt v0, v2, :cond_1

    const/16 v0, 0x5a

    :goto_2
    const/16 v2, 0x41

    if-ge v0, v2, :cond_2

    const/16 v0, 0x7a

    :goto_3
    const/16 v2, 0x61

    if-ge v0, v2, :cond_3

    const/16 v0, 0x39

    :goto_4
    if-ge v0, v6, :cond_4

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v4

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aput-byte v8, v2, v5

    const/4 v0, 0x0

    :goto_5
    const/16 v2, 0x19

    if-le v0, v2, :cond_5

    const/16 v0, 0x1a

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x33

    if-le v0, v2, :cond_6

    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0x3d

    if-le v0, v2, :cond_7

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v7

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v8

    return-void

    :cond_0
    const-string/jumbo v2, "com.sun.org.apache.xml.internal.security.utils.Base64"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static final decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x4

    new-array v9, v12, [B

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v10

    if-gtz v10, :cond_4

    :goto_1
    const/4 v12, 0x0

    aget-byte v11, v9, v12

    const/4 v12, 0x1

    aget-byte v0, v9, v12

    const/4 v12, 0x2

    aget-byte v1, v9, v12

    const/4 v12, 0x3

    aget-byte v2, v9, v12

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v3, v12, v11

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v4, v12, v0

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v5, v12, v1

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v6, v12, v2

    const/4 v12, -0x1

    if-ne v5, v12, :cond_9

    :cond_1
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v12

    if-nez v12, :cond_a

    :cond_2
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_3
    new-instance v12, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v13, "decoding.general"

    invoke-direct {v12, v13}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4
    int-to-byte v11, v10

    invoke-static {v11}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isWhiteSpace(B)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v11}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v12

    if-nez v12, :cond_5

    add-int/lit8 v8, v7, 0x1

    int-to-byte v12, v11

    aput-byte v12, v9, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    const/4 v12, 0x4

    if-ne v8, v12, :cond_8

    const/4 v7, 0x0

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/4 v13, 0x0

    aget-byte v13, v9, v13

    aget-byte v3, v12, v13

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/4 v13, 0x1

    aget-byte v13, v9, v13

    aget-byte v4, v12, v13

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/4 v13, 0x2

    aget-byte v13, v9, v13

    aget-byte v5, v12, v13

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/4 v13, 0x3

    aget-byte v13, v9, v13

    aget-byte v6, v12, v13

    shl-int/lit8 v12, v3, 0x2

    shr-int/lit8 v13, v4, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v5, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v8, v7, 0x1

    int-to-byte v12, v11

    aput-byte v12, v9, v7

    const/4 v12, 0x3

    if-eq v8, v12, :cond_6

    move v7, v8

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v7, v8, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v12

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v9, v8

    goto/16 :goto_1

    :cond_7
    new-instance v12, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v13, "decoding.general"

    invoke-direct {v12, v13}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    move v7, v8

    goto/16 :goto_0

    :cond_9
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    shl-int/lit8 v12, v3, 0x2

    shr-int/lit8 v13, v4, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v5, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    return-void

    :cond_a
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v12

    if-eqz v12, :cond_2

    and-int/lit8 v12, v4, 0xf

    if-nez v12, :cond_b

    shl-int/lit8 v12, v3, 0x2

    shr-int/lit8 v13, v4, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_b
    new-instance v12, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v13, "decoding.general"

    invoke-direct {v12, v13}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v5, v12, v1

    and-int/lit8 v12, v5, 0x3

    if-nez v12, :cond_d

    shl-int/lit8 v12, v3, 0x2

    shr-int/lit8 v13, v4, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v5, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_d
    new-instance v12, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v13, "decoding.general"

    invoke-direct {v12, v13}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final decode([BLjava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, -0x1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->removeWhiteSpace([B)I

    move-result v2

    rem-int/lit8 v11, v2, 0x4

    if-nez v11, :cond_1

    div-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v8, v3, -0x1

    move v10, v9

    :goto_0
    if-gtz v8, :cond_3

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v9, v10, 0x1

    aget-byte v12, p0, v10

    aget-byte v4, v11, v12

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v12, p0, v9

    aget-byte v5, v11, v12

    if-ne v4, v13, :cond_6

    :cond_0
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v12, "decoding.general"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v12, "decoding.divisible.four"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    return-void

    :cond_3
    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v9, v10, 0x1

    aget-byte v12, p0, v10

    aget-byte v4, v11, v12

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v12, p0, v9

    aget-byte v5, v11, v12

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v9, v10, 0x1

    aget-byte v12, p0, v10

    aget-byte v6, v11, v12

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v12, p0, v9

    aget-byte v7, v11, v12

    if-ne v4, v13, :cond_5

    :cond_4
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v12, "decoding.general"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    if-eq v5, v13, :cond_4

    if-eq v6, v13, :cond_4

    if-eq v7, v13, :cond_4

    shl-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v5, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v11, v5, 0xf

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v12, v6, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v11, v6, 0x6

    or-int/2addr v11, v7

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_6
    if-eq v5, v13, :cond_0

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v9, v10, 0x1

    aget-byte v0, p0, v10

    aget-byte v6, v11, v0

    sget-object v11, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v1, p0, v9

    aget-byte v7, v11, v1

    if-ne v6, v13, :cond_a

    :cond_7
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v11

    if-nez v11, :cond_b

    :cond_8
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_9
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v12, "decoding.general"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a
    if-eq v7, v13, :cond_7

    shl-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v5, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v11, v5, 0xf

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v12, v6, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v11, v6, 0x6

    or-int/2addr v11, v7

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    return-void

    :cond_b
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v11

    if-eqz v11, :cond_8

    and-int/lit8 v11, v5, 0xf

    if-nez v11, :cond_c

    shl-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v5, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_c
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v12, "decoding.general"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_d
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v11

    if-eqz v11, :cond_9

    and-int/lit8 v11, v6, 0x3

    if-nez v11, :cond_e

    shl-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v5, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v11, v5, 0xf

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v12, v6, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_e
    new-instance v11, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v12, "decoding.general"

    invoke-direct {v11, v12}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static decode(Ljava/io/BufferedReader;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :cond_0
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->write([B)V

    goto :goto_0
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decodeInternal([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static decode(Lorg/w3c/dom/Element;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Text;

    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static decode([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decodeInternal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBigIntegerFromElement(Lorg/w3c/dom/Element;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static decodeBigIntegerFromText(Lorg/w3c/dom/Text;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected static final decodeInternal([B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->removeWhiteSpace([B)I

    move-result v4

    rem-int/lit8 v14, v4, 0x4

    if-nez v14, :cond_1

    div-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    add-int/lit8 v14, v5, -0x1

    mul-int/lit8 v0, v14, 0x4

    add-int/lit8 v14, v5, -0x1

    mul-int/lit8 v12, v14, 0x3

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v15, p0, v0

    aget-byte v7, v14, v15

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v15, p0, v1

    aget-byte v8, v14, v15

    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    :cond_0
    new-instance v14, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v15, "decoding.general"

    invoke-direct {v14, v15}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    new-instance v14, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v15, "decoding.divisible.four"

    invoke-direct {v14, v15}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    const/4 v14, 0x0

    new-array v14, v14, [B

    return-object v14

    :cond_3
    const/4 v14, -0x1

    if-eq v8, v14, :cond_0

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v0

    aget-byte v9, v14, v2

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p0, v1

    aget-byte v10, v14, v3

    const/4 v14, -0x1

    if-ne v9, v14, :cond_7

    :cond_4
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_5
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_6
    new-instance v14, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v15, "decoding.general"

    invoke-direct {v14, v15}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_7
    const/4 v14, -0x1

    if-eq v10, v14, :cond_4

    add-int/lit8 v14, v12, 0x3

    new-array v6, v14, [B

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v7, 0x2

    shr-int/lit8 v15, v8, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v12

    add-int/lit8 v12, v13, 0x1

    and-int/lit8 v14, v8, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v9, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v9, 0x6

    or-int/2addr v14, v10

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v12

    :goto_0
    move v12, v13

    :goto_1
    const/4 v12, 0x0

    const/4 v0, 0x0

    add-int/lit8 v11, v5, -0x1

    move v1, v0

    move v13, v12

    :goto_2
    if-gtz v11, :cond_c

    return-object v6

    :cond_8
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v14

    if-eqz v14, :cond_5

    and-int/lit8 v14, v8, 0xf

    if-nez v14, :cond_9

    add-int/lit8 v14, v12, 0x1

    new-array v6, v14, [B

    shl-int/lit8 v14, v7, 0x2

    shr-int/lit8 v15, v8, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v12

    goto :goto_1

    :cond_9
    new-instance v14, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v15, "decoding.general"

    invoke-direct {v14, v15}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/lit8 v14, v9, 0x3

    if-nez v14, :cond_b

    add-int/lit8 v14, v12, 0x2

    new-array v6, v14, [B

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v7, 0x2

    shr-int/lit8 v15, v8, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v12

    and-int/lit8 v14, v8, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v9, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    goto :goto_0

    :cond_b
    new-instance v14, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v15, "decoding.general"

    invoke-direct {v14, v15}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_c
    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v15, p0, v1

    aget-byte v7, v14, v15

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v15, p0, v0

    aget-byte v8, v14, v15

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v15, p0, v1

    aget-byte v9, v14, v15

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v15, p0, v0

    aget-byte v10, v14, v15

    const/4 v14, -0x1

    if-ne v7, v14, :cond_e

    :cond_d
    new-instance v14, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v15, "decoding.general"

    invoke-direct {v14, v15}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_e
    const/4 v14, -0x1

    if-eq v8, v14, :cond_d

    const/4 v14, -0x1

    if-eq v9, v14, :cond_d

    const/4 v14, -0x1

    if-eq v10, v14, :cond_d

    add-int/lit8 v12, v13, 0x1

    shl-int/lit8 v14, v7, 0x2

    shr-int/lit8 v15, v8, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    add-int/lit8 v13, v12, 0x1

    and-int/lit8 v14, v8, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v9, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v12

    add-int/lit8 v12, v13, 0x1

    shl-int/lit8 v14, v9, 0x6

    or-int/2addr v14, v10

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    add-int/lit8 v11, v11, -0x1

    move v13, v12

    goto/16 :goto_2
.end method

.method public static encode(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->getBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4c

    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 26

    const/16 v24, 0x4

    move/from16 v0, p1

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    :goto_0
    if-eqz p0, :cond_1

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    mul-int/lit8 v16, v24, 0x8

    if-eqz v16, :cond_2

    rem-int/lit8 v17, v16, 0x18

    div-int/lit8 v18, v16, 0x18

    if-nez v17, :cond_3

    move/from16 v19, v18

    :goto_1
    div-int/lit8 v20, p1, 0x4

    add-int/lit8 v24, v19, -0x1

    div-int v21, v24, v20

    const/16 v22, 0x0

    mul-int/lit8 v24, v19, 0x4

    add-int v24, v24, v21

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v21

    if-lt v11, v0, :cond_4

    move v9, v8

    move v7, v6

    :goto_3
    move/from16 v0, v18

    if-lt v10, v0, :cond_9

    const/16 v24, 0x8

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const/16 v24, 0x10

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    :goto_4
    move v6, v7

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v24

    :cond_0
    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    const/16 v24, 0x0

    return-object v24

    :cond_2
    const-string/jumbo v24, ""

    return-object v24

    :cond_3
    add-int/lit8 v19, v18, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    move v9, v8

    move v7, v6

    :goto_5
    const/16 v24, 0x13

    move/from16 v0, v24

    if-lt v12, v0, :cond_5

    add-int/lit8 v6, v7, 0x1

    const/16 v24, 0xa

    aput-char v24, v22, v7

    add-int/lit8 v11, v11, 0x1

    move v8, v9

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v9, 0x1

    aget-byte v3, p0, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v4, p0, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v5, p0, v9

    and-int/lit8 v24, v4, 0xf

    move/from16 v0, v24

    int-to-byte v2, v0

    and-int/lit8 v24, v3, 0x3

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v23, v0

    and-int/lit8 v24, v3, -0x80

    if-eqz v24, :cond_6

    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v13, v0

    :goto_6
    and-int/lit8 v24, v4, -0x80

    if-eqz v24, :cond_7

    shr-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v14, v0

    :goto_7
    and-int/lit8 v24, v5, -0x80

    if-eqz v24, :cond_8

    shr-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v15, v0

    :goto_8
    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v13

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v23, 0x4

    or-int v25, v25, v14

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v6

    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v2, 0x2

    or-int v25, v25, v15

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v25, v5, 0x3f

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    move v9, v8

    goto/16 :goto_5

    :cond_6
    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    int-to-byte v13, v0

    goto :goto_6

    :cond_7
    shr-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-byte v14, v0

    goto :goto_7

    :cond_8
    shr-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    int-to-byte v15, v0

    goto :goto_8

    :cond_9
    add-int/lit8 v8, v9, 0x1

    aget-byte v3, p0, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v4, p0, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v5, p0, v9

    and-int/lit8 v24, v4, 0xf

    move/from16 v0, v24

    int-to-byte v2, v0

    and-int/lit8 v24, v3, 0x3

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v23, v0

    and-int/lit8 v24, v3, -0x80

    if-eqz v24, :cond_a

    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v11, v0

    :goto_9
    and-int/lit8 v24, v4, -0x80

    if-eqz v24, :cond_b

    shr-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v12, v0

    :goto_a
    and-int/lit8 v24, v5, -0x80

    if-eqz v24, :cond_c

    shr-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v13, v0

    :goto_b
    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v23, 0x4

    or-int v25, v25, v12

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v6

    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v2, 0x2

    or-int v25, v25, v13

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v25, v5, 0x3f

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v6

    add-int/lit8 v10, v10, 0x1

    move v9, v8

    goto/16 :goto_3

    :cond_a
    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    int-to-byte v11, v0

    goto :goto_9

    :cond_b
    shr-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-byte v12, v0

    goto :goto_a

    :cond_c
    shr-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    int-to-byte v13, v0

    goto :goto_b

    :cond_d
    aget-byte v3, p0, v9

    and-int/lit8 v24, v3, 0x3

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v23, v0

    and-int/lit8 v24, v3, -0x80

    if-eqz v24, :cond_e

    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v11, v0

    :goto_c
    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v23, 0x4

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v6

    add-int/lit8 v6, v7, 0x1

    const/16 v24, 0x3d

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    const/16 v24, 0x3d

    aput-char v24, v22, v6

    goto/16 :goto_4

    :cond_e
    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    int-to-byte v11, v0

    goto :goto_c

    :cond_f
    aget-byte v3, p0, v9

    add-int/lit8 v24, v9, 0x1

    aget-byte v4, p0, v24

    and-int/lit8 v24, v4, 0xf

    move/from16 v0, v24

    int-to-byte v2, v0

    and-int/lit8 v24, v3, 0x3

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v23, v0

    and-int/lit8 v24, v3, -0x80

    if-eqz v24, :cond_10

    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v11, v0

    :goto_d
    and-int/lit8 v24, v4, -0x80

    if-eqz v24, :cond_11

    shr-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v12, v0

    :goto_e
    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v23, 0x4

    or-int v25, v25, v12

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v6

    add-int/lit8 v6, v7, 0x1

    sget-object v24, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v2, 0x2

    aget-char v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v22, v7

    add-int/lit8 v7, v6, 0x1

    const/16 v24, 0x3d

    aput-char v24, v22, v6

    goto/16 :goto_4

    :cond_10
    shr-int/lit8 v24, v3, 0x2

    move/from16 v0, v24

    int-to-byte v11, v0

    goto :goto_d

    :cond_11
    shr-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-byte v12, v0

    goto :goto_e
.end method

.method public static encode(Ljava/math/BigInteger;I)[B
    .locals 8

    add-int/lit8 v5, p1, 0x7

    shr-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_2

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    :goto_0
    div-int/lit8 v6, v5, 0x8

    sub-int v3, v6, v2

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    invoke-static {v0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "utils.Base64.IllegalBitlength"

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v5, 0x8

    if-ne v6, v7, :cond_0

    return-object v0

    :cond_3
    const/4 v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static encodeToElement(Lorg/w3c/dom/Document;Ljava/lang/String;[B)Lorg/w3c/dom/Element;
    .locals 3

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static fillElementWithBigInteger(Lorg/w3c/dom/Element;Ljava/math/BigInteger;)V
    .locals 5

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x4c

    if-gt v3, v4, :cond_0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getBytes(Ljava/math/BigInteger;I)[B
    .locals 8

    add-int/lit8 v5, p1, 0x7

    shr-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_2

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    :goto_0
    div-int/lit8 v6, v5, 0x8

    sub-int v3, v6, v2

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    invoke-static {v0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "utils.Base64.IllegalBitlength"

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v5, 0x8

    if-ne v6, v7, :cond_0

    return-object v0

    :cond_3
    const/4 v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected static final isPad(B)Z
    .locals 1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static final isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    const-string/jumbo v2, "<container><base64 value=\"Should be \'Hallo\'\">SGFsbG8=</base64></container>"

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/String;

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected static removeWhiteSpace([B)I
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    move v1, v0

    :goto_0
    if-lt v3, v2, :cond_1

    return v1

    :cond_0
    return v5

    :cond_1
    aget-byte v4, p0, v3

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isWhiteSpace(B)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    int-to-byte v5, v4

    aput-byte v5, p0, v1

    goto :goto_1
.end method
