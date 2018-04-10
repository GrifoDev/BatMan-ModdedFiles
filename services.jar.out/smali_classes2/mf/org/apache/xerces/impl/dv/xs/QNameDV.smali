.class public Lmf/org/apache/xerces/impl/dv/xs/QNameDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "QNameDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;->EMPTY_STRING:Ljava/lang/String;

    move-object v1, p1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_0
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2, v2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_1
    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6, v3}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const-string/jumbo v6, "QName"

    aput-object v6, v5, v7

    const-string/jumbo v6, "cvc-datatype-valid.1.2.1"

    invoke-direct {v4, v6, v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_4
    new-instance v4, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const-string/jumbo v6, "QName"

    aput-object v6, v5, v7

    const-string/jumbo v6, "cvc-datatype-valid.1.2.1"

    invoke-direct {v4, v6, v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_5
    if-nez v3, :cond_1

    new-instance v4, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v2, v5, v7

    const-string/jumbo v6, "UndeclaredPrefix"

    invoke-direct {v4, v6, v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->rawname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
