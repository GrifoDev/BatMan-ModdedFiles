.class public Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;
.source "XML11DTDDVFactoryImpl.java"


# static fields
.field static final fXML11BuiltInTypes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;-><init>()V

    const-string/jumbo v3, "XML11ID"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "XML11IDREF"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string/jumbo v3, "XML11IDREFS"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "XML11NMTOKEN"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string/jumbo v3, "XML11NMTOKENS"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-object v0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 6

    sget-object v5, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v4
.end method
