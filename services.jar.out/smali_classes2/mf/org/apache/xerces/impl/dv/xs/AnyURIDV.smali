.class public Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AnyURIDV.java"


# static fields
.field private static final BASE_URI:Lmf/org/apache/xerces/util/URI;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/16 v7, 0x80

    const/16 v10, 0x7f

    const/4 v9, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v6, "abc://def.ghi.jkl"

    invoke-direct {v5, v6}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :goto_0
    sput-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    new-array v6, v7, [Z

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    new-array v6, v7, [C

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    new-array v6, v7, [C

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v6, 0x10

    new-array v6, v6, [C

    const/16 v7, 0x30

    aput-char v7, v6, v11

    const/16 v7, 0x31

    aput-char v7, v6, v9

    const/16 v7, 0x32

    aput-char v7, v6, v12

    const/16 v7, 0x33

    const/4 v8, 0x3

    aput-char v7, v6, v8

    const/16 v7, 0x34

    const/4 v8, 0x4

    aput-char v7, v6, v8

    const/16 v7, 0x35

    const/4 v8, 0x5

    aput-char v7, v6, v8

    const/16 v7, 0x36

    const/4 v8, 0x6

    aput-char v7, v6, v8

    const/16 v7, 0x37

    const/4 v8, 0x7

    aput-char v7, v6, v8

    const/16 v7, 0x8

    const/16 v8, 0x38

    aput-char v8, v6, v7

    const/16 v7, 0x39

    const/16 v8, 0x9

    aput-char v7, v6, v8

    const/16 v7, 0x41

    const/16 v8, 0xa

    aput-char v7, v6, v8

    const/16 v7, 0x42

    const/16 v8, 0xb

    aput-char v7, v6, v8

    const/16 v7, 0x43

    const/16 v8, 0xc

    aput-char v7, v6, v8

    const/16 v7, 0x44

    const/16 v8, 0xd

    aput-char v7, v6, v8

    const/16 v7, 0x45

    const/16 v8, 0xe

    aput-char v7, v6, v8

    const/16 v7, 0x46

    const/16 v8, 0xf

    aput-char v7, v6, v8

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x1f

    if-gt v2, v6, :cond_0

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v9, v6, v2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v9, v6, v10

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    const/16 v7, 0x37

    aput-char v7, v6, v10

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v7, 0x46

    aput-char v7, v6, v10

    const/16 v6, 0xb

    new-array v1, v6, [C

    const/16 v6, 0x20

    aput-char v6, v1, v11

    const/16 v6, 0x3c

    aput-char v6, v1, v9

    const/16 v6, 0x3e

    aput-char v6, v1, v12

    const/16 v6, 0x22

    const/4 v7, 0x3

    aput-char v6, v1, v7

    const/16 v6, 0x7b

    const/4 v7, 0x4

    aput-char v6, v1, v7

    const/16 v6, 0x7d

    const/4 v7, 0x5

    aput-char v6, v1, v7

    const/4 v6, 0x6

    const/16 v7, 0x7c

    aput-char v7, v1, v6

    const/16 v6, 0x5c

    const/4 v7, 0x7

    aput-char v6, v1, v7

    const/16 v6, 0x5e

    const/16 v7, 0x8

    aput-char v6, v1, v7

    const/16 v6, 0x7e

    const/16 v7, 0x9

    aput-char v6, v1, v7

    const/16 v6, 0x60

    const/16 v7, 0xa

    aput-char v6, v1, v7

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-char v0, v1, v2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v9, v6, v0

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v8, v0, 0x4

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v0

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v8, v0, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    return-void

    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v7, v6, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x80

    if-ge v3, v7, :cond_1

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v7, v7, v3

    if-nez v7, :cond_0

    int-to-char v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v7, v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v7, v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-lt v5, v6, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v7, v6, :cond_6

    return-object p0

    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    aget-byte v0, v2, v5

    if-ltz v0, :cond_4

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v7, v7, v0

    if-nez v7, :cond_5

    int-to-char v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    return-object p0

    :cond_4
    add-int/lit16 v3, v0, 0x100

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v8, v3, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v8, v3, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmf/org/apache/xerces/util/URI;

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    invoke-direct {v2, v3, v0}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string/jumbo v4, "anyURI"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "cvc-datatype-valid.1.2.1"

    invoke-direct {v2, v4, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method
