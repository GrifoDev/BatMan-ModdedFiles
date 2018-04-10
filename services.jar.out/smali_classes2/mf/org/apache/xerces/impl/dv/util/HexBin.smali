.class public final Lmf/org/apache/xerces/impl/dv/util/HexBin;
.super Ljava/lang/Object;
.source "HexBin.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final LOOKUPLENGTH:I = 0x10

.field private static final hexNumberTable:[B

.field private static final lookUpHexAlphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0x41

    const/16 v3, 0x30

    new-array v1, v5, [B

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/16 v1, 0x10

    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_1
    if-lt v0, v3, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x30

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x46

    :goto_2
    if-lt v0, v4, :cond_2

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x66

    :goto_3
    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/16 v0, 0xa

    :goto_5
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12

    const/16 v11, 0x80

    const/4 v8, -0x1

    const/4 v10, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    div-int/lit8 v4, v3, 0x2

    new-array v1, v4, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_6

    mul-int/lit8 v9, v2, 0x2

    aget-char v7, v0, v9

    if-lt v7, v11, :cond_2

    move v5, v8

    :goto_1
    if-eq v5, v8, :cond_3

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v0, v9

    if-lt v7, v11, :cond_4

    move v6, v8

    :goto_2
    if-eq v6, v8, :cond_5

    shl-int/lit8 v9, v5, 0x4

    or-int/2addr v9, v6

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v10

    :cond_1
    return-object v10

    :cond_2
    sget-object v9, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v5, v9, v7

    goto :goto_1

    :cond_3
    return-object v10

    :cond_4
    sget-object v9, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v6, v9, v7

    goto :goto_2

    :cond_5
    return-object v10

    :cond_6
    return-object v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    mul-int/lit8 v3, v2, 0x2

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-byte v4, p0, v1

    if-ltz v4, :cond_1

    :goto_1
    mul-int/lit8 v5, v1, 0x2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v5

    :cond_1
    add-int/lit16 v4, v4, 0x100

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method
