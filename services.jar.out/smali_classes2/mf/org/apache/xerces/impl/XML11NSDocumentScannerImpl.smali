.class public Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.source "XML11NSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

.field protected fPerformValidation:Z

.field private fSawSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)V

    return-object v0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    return-void
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    if-eq v9, v0, :cond_3

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v6, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    if-eqz v7, :cond_4

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v0, :cond_5

    :cond_0
    :goto_3
    return-void

    :cond_1
    const-string/jumbo v0, "EqRequiredInAttribute"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "AttributeNotUnique"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_a

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v10, v0, :cond_b

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v10, v0, :cond_d

    :cond_7
    :goto_5
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v11, v0, :cond_e

    :goto_6
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq v8, v0, :cond_f

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v11, v0, :cond_10

    :cond_8
    :goto_7
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_11

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v11, 0x0

    :cond_9
    invoke-interface {v0, v10, v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_4

    :cond_b
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v10, v0, :cond_c

    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v8, v0, :cond_6

    goto :goto_9

    :cond_d
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v2, "CantBindXMLNS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v2, "CantBindXMLNS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_f
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v11, v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v2, "CantBindXML"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_7

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v2, "CantBindXML"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_7

    :cond_11
    move-object v10, v8

    goto/16 :goto_8
.end method

.method protected scanEndElement()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-lt v0, v1, :cond_3

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_4

    :cond_0
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    return v0

    :cond_1
    const-string/jumbo v0, "ETagRequired"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ETagUnterminated"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ElementEntityMismatch"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0, v1, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_3
.end method

.method protected scanStartElement()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v11, :cond_3

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    const/16 v11, 0x3e

    if-eq v2, v11, :cond_6

    const/16 v11, 0x2f

    if-eq v2, v11, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v11

    if-nez v11, :cond_b

    :cond_2
    const-string/jumbo v11, "ElementUnterminated"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fScannerState:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v13, "MSG_GRAMMAR_NOT_FOUND"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v11, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v13, "RootElementTypeMustMatchDoctypedecl"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v11, :cond_c

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v11, :cond_1a

    :goto_5
    return v3

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v11

    if-eqz v11, :cond_9

    :goto_6
    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const-string/jumbo v11, "ElementUnterminated"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    if-eqz v9, :cond_1

    goto/16 :goto_2

    :cond_b
    if-eqz v9, :cond_2

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v12, :cond_10

    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v11, :cond_11

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v12, v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_12

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v11, :cond_13

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v4, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v11, :cond_14

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v11, :cond_15

    :goto_d
    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v1, v11, :cond_16

    :cond_f
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v13, "ElementXMLNSPrefix"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v15, v15, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v13, "ElementPrefixUnbound"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto/16 :goto_c

    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v11, v10, :cond_f

    goto/16 :goto_d

    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v10, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v10, :cond_17

    :goto_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11, v4, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v13, "AttributePrefixUnbound"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_f

    :cond_18
    const/4 v11, 0x1

    if-le v5, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v11, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v11, :cond_19

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v13, "AttributeNotUnique"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v13, "AttributeNSNotUnique"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_1a
    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    if-lt v11, v12, :cond_1c

    :goto_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v11, :cond_1d

    :goto_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v11, "ElementEntityMismatch"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v13, v13, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_11
.end method

.method protected scanStartElementAfterName()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v9, :cond_3

    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v9, 0x3e

    if-eq v1, v9, :cond_6

    const/16 v9, 0x2f

    if-eq v1, v9, :cond_8

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_2
    const-string/jumbo v9, "ElementUnterminated"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fScannerState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v11, "MSG_GRAMMAR_NOT_FOUND"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v9, :cond_5

    :cond_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v11, "RootElementTypeMustMatchDoctypedecl"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :goto_3
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v9, :cond_c

    :cond_7
    :goto_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v9, :cond_1a

    :goto_5
    return v2

    :cond_8
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v9

    if-eqz v9, :cond_9

    :goto_6
    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const-string/jumbo v9, "ElementUnterminated"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-eqz v9, :cond_1

    goto/16 :goto_2

    :cond_b
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-eqz v9, :cond_2

    goto/16 :goto_2

    :cond_c
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v9, v10, :cond_10

    :goto_7
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_11

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_8
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v10, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_12

    :cond_d
    :goto_9
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_13

    :cond_e
    :goto_a
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v4

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v4, :cond_18

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v3, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_14

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_c
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_15

    :goto_d
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v0, v9, :cond_16

    :cond_f
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v11, "ElementXMLNSPrefix"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v13, v13, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    :cond_11
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_8

    :cond_12
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_9

    :cond_13
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_e

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v11, "ElementPrefixUnbound"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    :cond_14
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_c

    :cond_15
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v9, v8, :cond_f

    goto :goto_d

    :cond_16
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v8, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v8, :cond_17

    :goto_f
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9, v3, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_e

    :cond_17
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v11, "AttributePrefixUnbound"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v0, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_f

    :cond_18
    const/4 v9, 0x1

    if-le v4, v9, :cond_7

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v9, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_19

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v11, "AttributeNotUnique"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_19
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v11, "AttributeNSNotUnique"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_1a
    if-nez v2, :cond_1b

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    :cond_1b
    iget v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-lt v9, v10, :cond_1c

    :goto_10
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v9, :cond_1d

    :goto_11
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v9, "ElementEntityMismatch"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_1d
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_11
.end method

.method protected scanStartElementName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-void
.end method
