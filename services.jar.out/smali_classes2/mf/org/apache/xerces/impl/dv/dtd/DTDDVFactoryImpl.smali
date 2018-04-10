.class public Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
.source "DTDDVFactoryImpl.java"


# static fields
.field static final fBuiltInTypes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->createBuiltInTypes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes()V
    .locals 4

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/StringDatatypeValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/dtd/StringDatatypeValidator;-><init>()V

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;-><init>()V

    const-string/jumbo v3, "ID"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/IDREFDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/IDREFDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "IDREF"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string/jumbo v3, "IDREFS"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;-><init>()V

    const-string/jumbo v3, "ENTITY"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string/jumbo v3, "ENTITIES"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/NOTATIONDatatypeValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/dtd/NOTATIONDatatypeValidator;-><init>()V

    const-string/jumbo v3, "NOTATION"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/NMTOKENDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/NMTOKENDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "NMTOKEN"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string/jumbo v3, "NMTOKENS"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-object v0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method
