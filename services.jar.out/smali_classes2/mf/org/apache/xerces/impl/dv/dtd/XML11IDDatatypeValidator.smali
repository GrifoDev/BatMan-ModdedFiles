.class public Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;
.super Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;
.source "XML11IDDatatypeValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;-><init>()V

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->useNamespaces()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isIdDeclared(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addId(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "IDInvalidWithNamespaces"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "IDInvalid"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "IDNotUnique"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
