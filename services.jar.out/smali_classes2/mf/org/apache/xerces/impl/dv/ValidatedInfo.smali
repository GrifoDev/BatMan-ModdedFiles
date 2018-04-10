.class public Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
.super Ljava/lang/Object;
.source "ValidatedInfo.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSValue;


# instance fields
.field public actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public actualValue:Ljava/lang/Object;

.field public actualValueType:S

.field public itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

.field public memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public normalizedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    const/16 v0, 0x1d

    if-le p0, v0, :cond_1

    const/16 v0, 0x2a

    if-le p0, v0, :cond_2

    return p0

    :cond_0
    return p0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public static isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    iget-short v10, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v3

    iget-short v10, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v4

    if-ne v3, v4, :cond_2

    const/16 v10, 0x2c

    if-ne v3, v10, :cond_7

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v5, :cond_9

    move v6, v9

    :goto_0
    if-nez v7, :cond_a

    move v8, v9

    :goto_1
    if-ne v6, v8, :cond_b

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_8

    invoke-interface {v5, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v10

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v1

    invoke-interface {v7, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v10

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v2

    if-ne v1, v2, :cond_c

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eq v3, v11, :cond_5

    :cond_3
    if-eq v3, v12, :cond_6

    :cond_4
    return v9

    :cond_5
    if-ne v4, v12, :cond_3

    :goto_4
    return v11

    :cond_6
    if-ne v4, v11, :cond_4

    goto :goto_4

    :cond_7
    const/16 v10, 0x2b

    if-eq v3, v10, :cond_0

    :cond_8
    return v11

    :cond_9
    invoke-interface {v5}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v6

    goto :goto_0

    :cond_a
    invoke-interface {v7}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v8

    goto :goto_1

    :cond_b
    return v9

    :cond_c
    if-eq v1, v11, :cond_e

    :cond_d
    if-eq v1, v12, :cond_f

    :goto_5
    return v9

    :cond_e
    if-ne v2, v12, :cond_d

    goto :goto_3

    :cond_f
    if-eq v2, v11, :cond_1

    goto :goto_5
.end method


# virtual methods
.method public copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    instance-of v4, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v4, :cond_3

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getNormalizedValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getActualValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getActualValueType()S

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-nez v3, :cond_5

    :cond_0
    iput-object v6, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    goto :goto_1

    :cond_3
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    int-to-short v4, v4

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBuiltInKind()S

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getMemberTypeDefinitions()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getActualValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getActualValueType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    return v0
.end method

.method public getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    goto :goto_0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getMemberTypeDefinitions()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getNormalizedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object v0
.end method
