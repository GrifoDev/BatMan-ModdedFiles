.class final Lmf/org/apache/xerces/impl/xs/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v5, 0x80

    const/16 v8, 0x7f

    const/4 v7, 0x1

    new-array v4, v5, [Z

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    new-array v4, v5, [C

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    new-array v4, v5, [C

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v4, 0x10

    new-array v4, v4, [C

    const/16 v5, 0x30

    aput-char v5, v4, v9

    const/16 v5, 0x31

    aput-char v5, v4, v7

    const/16 v5, 0x32

    aput-char v5, v4, v10

    const/16 v5, 0x33

    const/4 v6, 0x3

    aput-char v5, v4, v6

    const/16 v5, 0x34

    const/4 v6, 0x4

    aput-char v5, v4, v6

    const/16 v5, 0x35

    const/4 v6, 0x5

    aput-char v5, v4, v6

    const/16 v5, 0x36

    const/4 v6, 0x6

    aput-char v5, v4, v6

    const/16 v5, 0x37

    const/4 v6, 0x7

    aput-char v5, v4, v6

    const/16 v5, 0x8

    const/16 v6, 0x38

    aput-char v6, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0x9

    aput-char v5, v4, v6

    const/16 v5, 0x41

    const/16 v6, 0xa

    aput-char v5, v4, v6

    const/16 v5, 0x42

    const/16 v6, 0xb

    aput-char v5, v4, v6

    const/16 v5, 0x43

    const/16 v6, 0xc

    aput-char v5, v4, v6

    const/16 v5, 0x44

    const/16 v6, 0xd

    aput-char v5, v4, v6

    const/16 v5, 0x45

    const/16 v6, 0xe

    aput-char v5, v4, v6

    const/16 v5, 0x46

    const/16 v6, 0xf

    aput-char v5, v4, v6

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v8

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    const/16 v5, 0x37

    aput-char v5, v4, v8

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v5, 0x46

    aput-char v5, v4, v8

    const/16 v4, 0xf

    new-array v1, v4, [C

    const/16 v4, 0x20

    aput-char v4, v1, v9

    const/16 v4, 0x3c

    aput-char v4, v1, v7

    const/16 v4, 0x3e

    aput-char v4, v1, v10

    const/16 v4, 0x23

    const/4 v5, 0x3

    aput-char v4, v1, v5

    const/16 v4, 0x25

    const/4 v5, 0x4

    aput-char v4, v1, v5

    const/16 v4, 0x22

    const/4 v5, 0x5

    aput-char v4, v1, v5

    const/16 v4, 0x7b

    const/4 v5, 0x6

    aput-char v4, v1, v5

    const/16 v4, 0x7d

    const/4 v5, 0x7

    aput-char v4, v1, v5

    const/16 v4, 0x8

    const/16 v5, 0x7c

    aput-char v5, v1, v4

    const/16 v4, 0x5c

    const/16 v5, 0x9

    aput-char v4, v1, v5

    const/16 v4, 0x5e

    const/16 v5, 0xa

    aput-char v4, v1, v5

    const/16 v4, 0x7e

    const/16 v5, 0xb

    aput-char v4, v1, v5

    const/16 v4, 0x5b

    const/16 v5, 0xc

    aput-char v4, v1, v5

    const/16 v4, 0x5d

    const/16 v5, 0xd

    aput-char v4, v1, v5

    const/16 v4, 0x60

    const/16 v5, 0xe

    aput-char v4, v1, v5

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-char v0, v1, v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v8, 0x0

    const/16 v12, 0x2f

    const/16 v11, 0x25

    const/4 v10, 0x0

    if-eqz p0, :cond_1

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v7, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v8, v6, 0x3

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v8, "file://"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    :cond_0
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x80

    if-ge v3, v8, :cond_4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v8, v8, v3

    if-nez v8, :cond_3

    int-to-char v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-object v8

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v8, 0x41

    if-lt v3, v8, :cond_0

    const/16 v8, 0x5a

    if-gt v3, v8, :cond_0

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-lt v5, v6, :cond_6

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_6
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v6, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    aget-byte v0, v2, v5

    if-ltz v0, :cond_7

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v8, v8, v0

    if-nez v8, :cond_8

    int-to-char v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v4

    return-object p0

    :cond_7
    add-int/lit16 v3, v0, 0x100

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v9, v3, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v9, v3, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
