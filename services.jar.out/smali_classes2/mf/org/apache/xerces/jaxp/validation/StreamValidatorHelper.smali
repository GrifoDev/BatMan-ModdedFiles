.class final Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;
.super Ljava/lang/Object;
.source "StreamValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;


# static fields
.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfiguration:Ljava/lang/ref/SoftReference;

.field private fParser:Ljava/lang/ref/SoftReference;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    return-void
.end method

.method private initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    return-object v0

    :cond_0
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_0
.end method


# virtual methods
.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v13, v0, Lmf/javax/xml/transform/stream/StreamResult;

    if-eqz v13, :cond_1

    :cond_0
    move-object/from16 v11, p1

    check-cast v11, Lmf/javax/xml/transform/stream/StreamSource;

    move-object/from16 v10, p2

    check-cast v10, Lmf/javax/xml/transform/stream/StreamResult;

    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v11}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v5, v13, v14, v15}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v5, v13}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v13

    invoke-virtual {v5, v13}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v14, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    :goto_1
    :try_start_0
    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v14}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v14

    const-string/jumbo v15, "SourceResultMismatch"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v2

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v14, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v2, v14, v13}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v14, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v2, v14, v13}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v14, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v2, v14, v13}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    if-eqz v13, :cond_5

    :goto_2
    invoke-virtual {v10}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v13

    if-nez v13, :cond_6

    invoke-virtual {v10}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    if-nez v13, :cond_8

    invoke-virtual {v10}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v14}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v14

    const-string/jumbo v15, "StreamResultNotInitialized"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_5
    const-string/jumbo v13, "xml"

    invoke-static {v13}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v10}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v14

    new-instance v15, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v15}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v13, v14, v15}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/parsers/SAXParser;

    if-eqz v6, :cond_a

    :cond_7
    new-instance v8, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v8, v2}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-direct {v13, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v13}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v13, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {v9}, Lmf/org/apache/xml/serialize/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v13

    invoke-virtual {v8, v13}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v10}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    new-instance v15, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v15}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v13, v14, v15}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v9

    goto :goto_3

    :cond_9
    invoke-virtual {v10}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    new-instance v14, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v14}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v13, v7, v14}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v9

    goto :goto_3

    :cond_a
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lmf/org/apache/xerces/parsers/SAXParser;->reset()V

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_1
    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v13

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    throw v1

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v13

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
