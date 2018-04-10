.class public Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "IDREFDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addIdRef(Ljava/lang/String;)V

    return-void
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "NCName"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "cvc-datatype-valid.1.2.1"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method
