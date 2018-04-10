.class public final Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;
.super Lmf/javax/xml/validation/SchemaFactory;
.source "XMLSchemaFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;,
        Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;
    }
.end annotation


# static fields
.field private static final JAXP_SOURCE_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"

.field private static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

.field private fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

.field private fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fUseGrammarPoolOnly:Z

.field private final fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

.field private final fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lmf/javax/xml/validation/SchemaFactory;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    new-instance v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    iput-boolean v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return-void
.end method

.method private propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V
    .locals 5

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    const-string/jumbo v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v4, v3}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    aget-object v3, v0, v1

    invoke-virtual {p1, v3, v2}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "http://javax.xml.transform"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const-string/jumbo v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "FeatureNameNull"

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v4

    :cond_3
    const-string/jumbo v2, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v2, :cond_5

    return v5

    :cond_5
    return v4

    :cond_6
    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "feature-not-supported"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "feature-not-recognized"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "ProperyNameNull"

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    return-object v2

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const-string/jumbo v5, "property-not-supported"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "property-not-supported"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "property-not-recognized"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public isSchemaLanguageSupported(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "SchemaLanguageNull"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "SchemaLanguageLengthZero"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newSchema()Lmf/javax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    return-object v0
.end method

.method public newSchema(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)Lmf/javax/xml/validation/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    if-nez v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_0
.end method

.method public newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v13, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;

    invoke-direct {v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v25, v0

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_7

    aget-object v19, p1, v9

    move-object/from16 v0, v19

    instance-of v0, v0, Lmf/javax/xml/transform/stream/StreamSource;

    move/from16 v26, v0

    if-nez v26, :cond_0

    move-object/from16 v0, v19

    instance-of v0, v0, Lmf/javax/xml/transform/sax/SAXSource;

    move/from16 v26, v0

    if-nez v26, :cond_1

    move-object/from16 v0, v19

    instance-of v0, v0, Lmf/javax/xml/transform/dom/DOMSource;

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, v19

    instance-of v0, v0, Lmf/javax/xml/transform/stax/StAXSource;

    move/from16 v26, v0

    if-nez v26, :cond_4

    if-eqz v19, :cond_6

    new-instance v26, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v27

    const-string/jumbo v28, "SchemaFactorySourceUnrecognized"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v27 .. v29}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_0
    move-object/from16 v21, v19

    check-cast v21, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-virtual/range {v21 .. v21}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v21 .. v21}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v15

    new-instance v24, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v14, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    aput-object v24, v25, v9

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v16, v19

    check-cast v16, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-virtual/range {v16 .. v16}, Lmf/javax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v26, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual/range {v16 .. v16}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10}, Lmf/org/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    aput-object v26, v25, v9

    goto :goto_1

    :cond_2
    new-instance v26, Lorg/xml/sax/SAXException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v27

    const-string/jumbo v28, "SAXSourceNullInputSource"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_3
    move-object/from16 v3, v19

    check-cast v3, Lmf/javax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v12

    invoke-virtual {v3}, Lmf/javax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    new-instance v26, Lmf/org/apache/xerces/util/DOMInputSource;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lmf/org/apache/xerces/util/DOMInputSource;-><init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V

    aput-object v26, v25, v9

    goto :goto_1

    :cond_4
    move-object/from16 v20, v19

    check-cast v20, Lmf/javax/xml/transform/stax/StAXSource;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v26, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLStreamReader;)V

    aput-object v26, v25, v9

    goto :goto_1

    :cond_5
    new-instance v26, Lmf/org/apache/xerces/util/StAXInputSource;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLEventReader;)V

    aput-object v26, v25, v9

    goto :goto_1

    :cond_6
    new-instance v26, Ljava/lang/NullPointerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v27

    const-string/jumbo v28, "SchemaSourceArrayMemberNull"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-virtual {v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->getGrammarCount()I

    move-result v7

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    new-instance v17, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v26, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object/from16 v0, v26

    invoke-direct {v0, v13}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    return-object v17

    :catch_0
    move-exception v5

    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v26

    throw v26

    :catch_1
    move-exception v4

    new-instance v18, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    :goto_3
    throw v18

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    goto :goto_3

    :cond_9
    const/16 v26, 0x1

    move/from16 v0, v26

    if-gt v7, v0, :cond_a

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v7, v0, :cond_b

    new-instance v17, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;-><init>()V

    goto :goto_2

    :cond_a
    new-instance v17, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v26, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object/from16 v0, v26

    invoke-direct {v0, v13}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v26, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v8

    new-instance v17, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;

    const/16 v26, 0x0

    aget-object v26, v8, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_2
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-nez p1, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "http://javax.xml.transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    const-string/jumbo v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "FeatureNameNull"

    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const-string/jumbo v5, "feature-read-only"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo v3, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    :goto_1
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance v2, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    goto :goto_1

    :cond_6
    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "feature-not-supported"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "feature-not-recognized"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "ProperyNameNull"

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const-string/jumbo v5, "property-not-supported"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "property-not-supported"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string/jumbo v5, "property-not-recognized"

    invoke-static {v3, v5, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method
