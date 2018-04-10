.class public Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;
    }
.end annotation


# static fields
.field private static algorithmsMap:Ljava/util/Map;

.field static synthetic class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;

.field private static providerName:Ljava/lang/String;

.field private static uriToJCEName:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->uriToJCEName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->algorithmsMap:Ljava/util/Map;

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->providerName:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.algorithms.JCEMapper"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static getAlgorithmClassFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->algorithmClass:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Request for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAlgorithmMapping(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    return-object v0
.end method

.method public static getJCEKeyAlgorithmFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->requiredKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyLengthFromURI(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->keyLength:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProviderId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Lorg/w3c/dom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "Algorithms"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->loadAlgorithms(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static loadAlgorithms(Lorg/w3c/dom/Element;)V
    .locals 8

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    const-string/jumbo v6, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v7, "Algorithm"

    invoke-static {v5, v6, v7}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v5, v0

    if-lt v1, v5, :cond_0

    return-void

    :cond_0
    aget-object v2, v0, v1

    const-string/jumbo v5, "URI"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "JCEName"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->uriToJCEName:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->algorithmsMap:Ljava/util/Map;

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    invoke-direct {v6, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setProviderId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->providerName:Ljava/lang/String;

    return-void
.end method

.method public static translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->uriToJCEName:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Request for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method
