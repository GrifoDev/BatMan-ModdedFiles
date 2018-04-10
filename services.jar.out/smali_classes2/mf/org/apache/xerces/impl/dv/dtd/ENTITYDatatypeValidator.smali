.class public Lmf/org/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;
.super Ljava/lang/Object;
.source "ENTITYDatatypeValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/DatatypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "ENTITYNotUnparsed"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
