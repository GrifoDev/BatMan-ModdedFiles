.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;
.super Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverFragment:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverFragment:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverFragment:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.resolver.implementations.ResolverFragment"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverFragment:Ljava/lang/Class;

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
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return v5

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Quick fail for null uri"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_4

    :goto_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_3
    return v5

    :cond_4
    const-string/jumbo v1, "#xpointer("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "State I can resolve reference: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Do not seem to be able to resolve reference: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->getElementById(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_0
    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v3, v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setExcludeComments(Z)V

    const-string/jumbo v5, "text/xml"

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setMIMEType(Ljava/lang/String;)V

    if-nez p2, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    return-object v3

    :cond_0
    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v7, "ResolverFragment with empty URI (means complete document)"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v6

    new-instance v5, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;

    const-string/jumbo v6, "signature.Verification.MissingID"

    invoke-direct {v5, v6, v4, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v5

    :cond_3
    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverFragment;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Try to catch an Element with ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " and Element was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
