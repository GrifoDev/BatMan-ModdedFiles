.class public abstract Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
.super Ljava/lang/Object;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolverSpi:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _properties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolverSpi:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolverSpi:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolverSpi"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolverSpi:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->_properties:Ljava/util/Map;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
.end method

.method public engineGetProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0
.end method

.method public engineGetPropertyKeys()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public abstract engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation
.end method

.method public abstract engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation
.end method

.method public abstract engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation
.end method

.method public engineSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0
.end method

.method public understandsProperty(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineGetPropertyKeys()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method
