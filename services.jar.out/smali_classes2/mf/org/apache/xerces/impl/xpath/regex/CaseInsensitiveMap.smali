.class final Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;
.super Ljava/lang/Object;
.source "CaseInsensitiveMap.java"


# static fields
.field private static CHUNK_MASK:I

.field private static CHUNK_SHIFT:I

.field private static CHUNK_SIZE:I

.field private static INITIAL_CHUNK_COUNT:I

.field private static LOWER_CASE_MATCH:I

.field private static UPPER_CASE_MATCH:I

.field private static caseInsensitiveMap:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xa

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    shl-int v0, v1, v0

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    const/16 v0, 0x40

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sput v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    const/4 v0, 0x2

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->buildCaseInsensitiveMap()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCaseInsensitiveMap()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x2

    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sget v9, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    const-class v10, [I

    new-array v11, v12, [I

    aput v8, v11, v13

    const/4 v8, 0x1

    aput v9, v11, v8

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[I

    sput-object v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    const/4 v0, 0x0

    :goto_0
    const/high16 v8, 0x10000

    if-ge v0, v8, :cond_7

    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v3, v6, :cond_2

    :cond_0
    new-array v5, v12, [I

    const/4 v1, 0x0

    if-ne v3, v0, :cond_3

    move v2, v1

    :cond_1
    :goto_1
    if-ne v6, v0, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne v3, v0, :cond_0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    aput v3, v5, v13

    add-int/lit8 v2, v1, 0x1

    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    aput v8, v5, v1

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v4

    if-eqz v4, :cond_1

    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    invoke-static {v0, v5, v3, v4, v8}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v5

    goto :goto_1

    :cond_4
    array-length v8, v5

    if-eq v2, v8, :cond_5

    :goto_4
    add-int/lit8 v1, v2, 0x1

    aput v6, v5, v2

    add-int/lit8 v2, v1, 0x1

    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    aput v8, v5, v1

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v7

    if-nez v7, :cond_6

    move v1, v2

    goto :goto_2

    :cond_5
    invoke-static {v5, v12}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandMap([II)[I

    move-result-object v5

    goto :goto_4

    :cond_6
    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {v0, v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v5

    move v1, v2

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static contains([II)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static contains([III)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget v1, p0, v0

    if-eq v1, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static expandAndAdd([III)[I
    .locals 4

    const/4 v3, 0x0

    array-length v1, p0

    add-int/lit8 v2, v1, 0x2

    new-array v0, v2, [I

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v0, v1

    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    return-object v0
.end method

.method private static expandMap([II)[I
    .locals 4

    const/4 v3, 0x0

    array-length v1, p0

    add-int v2, v1, p1

    new-array v0, v2, [I

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static get(I)[I
    .locals 1

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static getMapping(I)[I
    .locals 3

    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v2

    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int v1, p0, v2

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2
.end method

.method private static set(I[I)V
    .locals 3

    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v2

    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int v1, p0, v2

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v2, v2, v0

    aput-object p1, v2, v1

    return-void
.end method

.method private static updateMap(I[II[II)[I
    .locals 4

    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_3

    aget v0, p3, v2

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v1, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    goto :goto_2

    :cond_3
    invoke-static {p3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    return-object p1

    :cond_4
    invoke-static {p3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object p3

    invoke-static {p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    goto :goto_3
.end method
