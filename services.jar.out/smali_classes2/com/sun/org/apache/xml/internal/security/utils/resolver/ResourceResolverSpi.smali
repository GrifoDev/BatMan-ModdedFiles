.class public abstract Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;
.super Ljava/lang/Object;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolverSpi:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _properties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolverSpi:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolverSpi:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolverSpi:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->_properties:Ljava/util/Map;

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

.method public static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/16 v13, 0x3a

    const/4 v12, 0x2

    const/16 v10, 0x2f

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v12, :cond_5

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x41

    if-le v8, v0, :cond_4

    :cond_3
    move v4, v7

    :goto_2
    if-eqz v4, :cond_0

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "Found DOS filename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v8, 0x5a

    if-gt v0, v8, :cond_3

    if-ne v1, v13, :cond_3

    if-ne v2, v10, :cond_3

    if-eq v3, v10, :cond_3

    move v4, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/16 v6, 0x41

    if-gt v6, v1, :cond_1

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public engineAddProperies(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public abstract engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
.end method

.method public engineGetProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->_properties:Ljava/util/Map;

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

.method public abstract engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation
.end method

.method public engineSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->_properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->_properties:Ljava/util/Map;

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetPropertyKeys()[Ljava/lang/String;

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
