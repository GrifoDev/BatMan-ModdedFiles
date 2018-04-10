.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;
.super Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;


# static fields
.field private static final HttpBasicPass:I = 0x5

.field private static final HttpBasicUser:I = 0x4

.field private static final HttpProxyHost:I = 0x0

.field private static final HttpProxyPass:I = 0x3

.field private static final HttpProxyPort:I = 0x1

.field private static final HttpProxyUser:I = 0x2

.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverDirectHTTP:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;

.field static final properties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverDirectHTTP:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverDirectHTTP:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http.proxy.host"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "http.proxy.port"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "http.proxy.username"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "http.proxy.password"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "http.basic.username"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "http.basic.password"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.resolver.implementations.ResolverDirectHTTP"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverDirectHTTP:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;-><init>()V

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

.method private getNewURI(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v1, p2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Lcom/sun/org/apache/xml/internal/utils/URI;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v5

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return v5

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "quick fail, uri == null"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_2
    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_3
    const/4 v1, 0x1

    return v1

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "quick fail for empty URIs and local ones"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "I was asked whether I can resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    return v5

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "I state that I can resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "I state that I can\'t resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public engineGetPropertyKeys()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    return-object v0
.end method

.method public engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    const/16 v17, 0x0

    :try_start_0
    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v19, :cond_4

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxySet"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxyHost"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxyPort"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    if-nez v21, :cond_5

    :cond_1
    const/16 v24, 0x0

    :goto_1
    if-nez v17, :cond_6

    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->getNewURI(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/URI;

    move-result-object v5

    new-instance v6, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v6, v5}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Lcom/sun/org/apache/xml/internal/utils/URI;)V

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->setFragment(Ljava/lang/String;)V

    new-instance v7, Ljava/net/URL;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    const/16 v26, 0x3

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v9, :cond_8

    :cond_2
    :goto_3
    const-string/jumbo v25, "WWW-Authenticate"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    :cond_3
    :goto_4
    const-string/jumbo v25, "Content-Type"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v12, v0, [B

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-gez v13, :cond_a

    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v26, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v25 .. v26}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v25

    if-nez v25, :cond_b

    :goto_6
    new-instance v16, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setMIMEType(Ljava/lang/String;)V

    if-nez v24, :cond_c

    :goto_7
    return-object v16

    :cond_4
    if-eqz v20, :cond_0

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v22, :cond_1

    if-eqz v23, :cond_1

    const/16 v24, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v26, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v25 .. v26}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v25

    if-nez v25, :cond_7

    :goto_8
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxySet"

    const-string/jumbo v27, "true"

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxyHost"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxyPort"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v18

    new-instance v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;

    const-string/jumbo v26, "generic.EmptyMessage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v25

    :cond_7
    :try_start_1
    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v26, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v28, "Use of HTTP proxy enabled: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string/jumbo v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v18

    new-instance v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;

    const-string/jumbo v26, "generic.EmptyMessage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v25

    :cond_8
    if-eqz v10, :cond_2

    :try_start_2
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v25, "Proxy-Authorization"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v25, "Basic"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    const/16 v26, 0x4

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->properties:[Ljava/lang/String;

    const/16 v26, 0x5

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v14

    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v26, "Basic "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "Authorization"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v12, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v15, v13

    goto/16 :goto_5

    :cond_b
    sget-object v25, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverDirectHTTP;->log:Ljava/util/logging/Logger;

    sget-object v26, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v28, "Fetched "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string/jumbo v28, " bytes from URI "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxySet"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxyHost"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v25

    const-string/jumbo v26, "http.proxyPort"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7
.end method
