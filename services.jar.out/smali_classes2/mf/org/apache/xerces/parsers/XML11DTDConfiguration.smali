.class public Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "XML11DTDConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lmf/org/apache/xerces/parsers/XML11Configurable;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field private f11Initialized:Z

.field protected fCommonComponents:Ljava/util/ArrayList;

.field protected fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11Components:Ljava/util/ArrayList;

.field protected fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

.field protected fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

.field protected fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

.field protected fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fRecognizedFeatures:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fRecognizedProperties:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v0, v6

    const-string/jumbo v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v3, v0, v7

    const-string/jumbo v3, "http://xml.org/sax/features/validation"

    aput-object v3, v0, v8

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v0, v9

    const/4 v3, 0x4

    const-string/jumbo v4, "http://xml.org/sax/features/external-general-entities"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://xml.org/sax/features/validation"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v5, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v3, v1, v6

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v3, v1, v7

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v3, v1, v8

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "http://xml.org/sax/properties/xml-string"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v3, :cond_1

    :goto_1
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/dtd-processor"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    return-void

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private initXML11Components()V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    goto :goto_0
.end method


# virtual methods
.method protected addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    return-void

    :cond_0
    return-void
.end method

.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    return-void

    :cond_0
    return-void
.end method

.method protected addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    if-nez v3, :cond_2

    :cond_0
    if-nez v4, :cond_5

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_0

    aget-object v0, v3, v1

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_1

    aget-object v2, v4, v1

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    goto :goto_3
.end method

.method protected addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    return-void

    :cond_0
    return-void
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string/jumbo v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    const-string/jumbo v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_8

    :cond_2
    const-string/jumbo v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_9

    :cond_3
    const-string/jumbo v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_a

    :cond_4
    const-string/jumbo v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_5
    const-string/jumbo v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_c

    :cond_6
    const-string/jumbo v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_d

    :cond_7
    const-string/jumbo v2, "internal/parser-settings"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "internal/parser-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v4, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_8
    const-string/jumbo v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_9
    const-string/jumbo v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v4, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_a
    const-string/jumbo v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v4, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_b
    const-string/jumbo v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_c
    const-string/jumbo v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_d
    const-string/jumbo v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v4, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v2, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string/jumbo v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "http://apache.org/xml/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    const-string/jumbo v2, "internal/dtd-scanner"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "internal/dtd-scanner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "http://xml.org/sax/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    const-string/jumbo v2, "xml-string"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "xml-string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configurePipeline()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-ne v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_3

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-ne v0, v1, :cond_8

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_9

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_7
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/dtd-processor"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-ne v0, v1, :cond_5

    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_6

    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_9

    :cond_7
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto/16 :goto_6
.end method

.method protected configureXML11Pipeline()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    if-ne v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_3

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-ne v0, v1, :cond_8

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_9

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_7
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/dtd-processor"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-ne v0, v1, :cond_5

    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_6

    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_9

    :cond_7
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/document-scanner"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto/16 :goto_6
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    if-nez v5, :cond_0

    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

    return-void

    :cond_0
    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    const-string/jumbo v6, "FWK005 parse may not be called while parsing."

    invoke-direct {v5, v6}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

    throw v0

    :catch_1
    move-exception v1

    :try_start_2
    throw v1

    :catch_2
    move-exception v3

    throw v3

    :catch_3
    move-exception v2

    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-nez v5, :cond_0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result v5

    return v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v5, p0}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->resetCommon()V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    return v7

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->configurePipeline()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->reset()V

    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v5, Lmf/org/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v6, v5, v4}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V

    const/4 v5, 0x0

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v3

    throw v3

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->initXML11Components()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->configureXML11Pipeline()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->resetXML11()V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v2

    throw v2

    :catch_3
    move-exception v1

    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5

    :catch_4
    move-exception v3

    throw v3

    :catch_5
    move-exception v0

    throw v0

    :catch_6
    move-exception v2

    throw v2

    :catch_7
    move-exception v1

    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resetCommon()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resetXML11()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_0
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
