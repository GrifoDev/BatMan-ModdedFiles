.class public Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;
.super Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.source "XMLNSDTDValidator.java"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method


# virtual methods
.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_3

    :cond_0
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    return-void

    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez p3, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method protected final startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v14}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v14, v15, :cond_6

    :goto_0
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_e

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v12, v14, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v12, v14, :cond_8

    :cond_1
    :goto_2
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v13, v14, :cond_9

    :goto_3
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq v11, v14, :cond_a

    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v13, v14, :cond_b

    :cond_2
    :goto_4
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v14, :cond_c

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v13, v14, :cond_d

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    const/4 v13, 0x0

    :cond_4
    invoke-interface {v14, v12, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "ElementXMLNSPrefix"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_7
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v12, v14, :cond_5

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v14, :cond_0

    goto :goto_6

    :cond_8
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "CantBindXMLNS"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "CantBindXMLNS"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "CantBindXML"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "CantBindXML"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_c
    move-object v12, v11

    goto/16 :goto_5

    :cond_d
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "EmptyPrefixedAttName"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v14, :cond_11

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v14, v12}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_12

    :cond_f
    :goto_8
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v14, :cond_13

    :cond_10
    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-ge v8, v10, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v14, :cond_14

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v14, :cond_15

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v2, v14, :cond_16

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v0, p1

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_7

    :cond_12
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v14, :cond_f

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_8

    :cond_13
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "ElementPrefixUnbound"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aput-object v18, v17, v19

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v16, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface/range {v15 .. v16}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v15, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v14, :cond_17

    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "AttributePrefixUnbound"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const/16 v18, 0x2

    aput-object v2, v17, v18

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_d

    :cond_18
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    const/4 v8, 0x0

    :goto_e
    add-int/lit8 v14, v4, -0x1

    if-ge v8, v14, :cond_1d

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1a

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1a
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v5, v14, :cond_19

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v9, v8, 0x1

    :goto_f
    if-ge v9, v4, :cond_19

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    if-eq v1, v6, :cond_1c

    :cond_1b
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1c
    if-ne v5, v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v16, "AttributeNSNotUnique"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v1, v17, v18

    const/16 v18, 0x2

    aput-object v5, v17, v18

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_10

    :cond_1d
    return-void
.end method
