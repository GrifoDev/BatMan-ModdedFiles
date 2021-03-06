.class public Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XIncludeParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"


# instance fields
.field private fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v2, v0, v4

    const-string/jumbo v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v2, v0, v3

    const-string/jumbo v2, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v2, v0, v5

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    aput-object v2, v1, v4

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    const-string/jumbo v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v2, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 4

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v2, :cond_0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_2
.end method

.method protected configureXML11Pipeline()V
    .locals 4

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v2, :cond_0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
