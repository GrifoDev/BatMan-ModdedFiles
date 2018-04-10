.class Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDElementTraverser.java"


# instance fields
.field fDeferTraversingLocalElements:Z

.field protected final fTempElementDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fTempElementDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-void
.end method


# virtual methods
.method reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    return-void
.end method

.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 8

    const/4 v5, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v5, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseNamedElement(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v7
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 16

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-nez v1, :cond_0

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    if-nez v1, :cond_1

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    iget-short v1, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-eqz v1, :cond_4

    :goto_1
    return-object v6

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-short v1, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v13

    if-nez v13, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fillInLocalElemInfo(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    goto :goto_1

    :cond_3
    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    :try_start_0
    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_2

    iput v14, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V
    .locals 24

    if-nez p7, :cond_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v23, v7, v4

    check-cast v23, Lmf/org/apache/xerces/xni/QName;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v22, v7, v4

    check-cast v22, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v21, v7, v4

    check-cast v21, Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/16 v20, 0x0

    const/16 v16, 0x0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object v10, v7

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-virtual/range {v8 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseNamedElement(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v20

    :cond_0
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-nez v20, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    :goto_2
    if-nez v23, :cond_8

    if-nez v20, :cond_a

    sget-object v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_3
    move-object/from16 v0, p1

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_4
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v19, v7, v4

    check-cast v19, Ljava/lang/Long;

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Element;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v13, p5

    invoke-virtual/range {v9 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1
    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-nez v23, :cond_3

    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x3

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    if-nez v18, :cond_5

    :cond_4
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    :goto_5
    if-eqz v18, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v23

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    const-string/jumbo v5, "src-element.2.2"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_5
    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    goto :goto_5

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    goto/16 :goto_2

    :cond_8
    if-nez v16, :cond_9

    sget-object v17, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_4

    :cond_9
    new-instance v17, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object/from16 v4, v17

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_6

    :cond_a
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_3
.end method

.method traverseNamedElement(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 32

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v14, p2, v4

    check-cast v14, Ljava/lang/Boolean;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v17, p2, v4

    check-cast v17, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v19, p2, v4

    check-cast v19, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v23, p2, v4

    check-cast v23, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v25, p2, v4

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v28, p2, v4

    check-cast v28, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    aget-object v29, p2, v4

    check-cast v29, Ljava/lang/Boolean;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    aget-object v30, p2, v4

    check-cast v30, Lmf/org/apache/xerces/xni/QName;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v31, p2, v4

    check-cast v31, Lmf/org/apache/xerces/xni/QName;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-nez v4, :cond_c

    new-instance v20, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    :goto_0
    if-nez v28, :cond_d

    :goto_1
    if-nez p5, :cond_e

    move-object/from16 v0, p6

    instance-of v4, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-nez v4, :cond_f

    :goto_2
    if-nez v25, :cond_10

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalElementsQualified:Z

    if-nez v4, :cond_12

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    :goto_3
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    :goto_4
    int-to-short v4, v4

    move-object/from16 v0, v20

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    if-eqz v23, :cond_14

    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    :goto_5
    int-to-short v4, v4

    move-object/from16 v0, v20

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    move-object/from16 v0, v20

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v4, v4, 0x7

    int-to-short v4, v4

    int-to-short v4, v4

    move-object/from16 v0, v20

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    move-object/from16 v0, v20

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    int-to-short v4, v4

    move-object/from16 v0, v20

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_15

    :goto_6
    if-nez v14, :cond_16

    :cond_0
    :goto_7
    if-nez v24, :cond_17

    if-nez v19, :cond_18

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    :goto_8
    if-nez v30, :cond_19

    :goto_9
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    const/4 v15, 0x0

    if-nez v12, :cond_1a

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1b

    :goto_a
    if-nez v15, :cond_1c

    sget-object v16, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_b
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/16 v22, 0x0

    const/16 v26, 0x0

    if-nez v12, :cond_1d

    :cond_2
    :goto_c
    if-eqz v22, :cond_1f

    :cond_3
    :goto_d
    if-eqz v22, :cond_20

    :cond_4
    :goto_e
    if-eqz v22, :cond_21

    :goto_f
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v12, :cond_22

    :cond_5
    if-eqz v28, :cond_2b

    :goto_10
    if-nez v12, :cond_2d

    :goto_11
    if-nez v19, :cond_2e

    :cond_6
    :goto_12
    if-nez v26, :cond_2f

    :cond_7
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v4, :cond_30

    :cond_8
    :goto_14
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v4, :cond_31

    :cond_9
    :goto_15
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v4, :cond_32

    :cond_a
    :goto_16
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eqz v4, :cond_35

    if-nez p5, :cond_36

    :cond_b
    :goto_17
    return-object v20

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getElementDecl()Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v20

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsGlobal()V

    goto/16 :goto_3

    :cond_f
    check-cast p6, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsLocal(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p3

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p3

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto/16 :goto_5

    :cond_15
    invoke-virtual/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsNillable()V

    goto/16 :goto_6

    :cond_16
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsAbstract()V

    goto/16 :goto_7

    :cond_17
    new-instance v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v24

    iput-object v0, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto/16 :goto_8

    :cond_18
    new-instance v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v19

    iput-object v0, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x3

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v4, v0, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_9

    :cond_1a
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v15

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    goto/16 :goto_a

    :cond_1b
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v15

    goto/16 :goto_a

    :cond_1c
    new-instance v16, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object/from16 v4, v16

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v4, v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto/16 :goto_b

    :cond_1d
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v12, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v22

    const/16 v26, 0x1

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v12, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v22

    const/16 v26, 0x1

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    goto/16 :goto_c

    :cond_1f
    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x7

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-virtual {v4, v0, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v22, :cond_3

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    goto/16 :goto_d

    :cond_20
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_4

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v22, v0

    goto/16 :goto_e

    :cond_21
    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto/16 :goto_f

    :cond_22
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    :cond_23
    :goto_18
    if-eqz v12, :cond_5

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_24
    :goto_19
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v12, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v12, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v12, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_28

    :cond_26
    :goto_1a
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_23

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    goto :goto_18

    :cond_27
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v4, v12, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->storeKeyRef(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    goto :goto_1a

    :cond_28
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v4, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v12, v5}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDRegistry()Ljava/util/Hashtable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDRegistry_sub()Ljava/util/Hashtable;

    move-result-object v11

    const/4 v9, 0x1

    move-object/from16 v13, p3

    invoke-virtual/range {v7 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_1a

    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v12, v5}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1b

    :cond_2a
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_19

    :cond_2b
    if-nez p5, :cond_2c

    const-string/jumbo v4, "src-element.2.1"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_1c
    const-string/jumbo v28, "(no name)"

    goto/16 :goto_10

    :cond_2c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "s4s-att-must-appear"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1c

    :cond_2d
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const-string/jumbo v5, "(annotation?, (simpleType | complexType)?, (unique | key | keyref)*))"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string/jumbo v5, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_11

    :cond_2e
    if-eqz v24, :cond_6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const-string/jumbo v5, "src-element.1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_12

    :cond_2f
    if-eqz v31, :cond_7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const-string/jumbo v5, "src-element.3"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_13

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, v20

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v20

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v4, v5, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    move-object/from16 v0, v20

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "e-props-correct.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto/16 :goto_14

    :cond_31
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, v20

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, v20

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    invoke-static {v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "e-props-correct.4"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_15

    :cond_32
    invoke-interface/range {v22 .. v22}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_34

    :cond_33
    invoke-interface/range {v22 .. v22}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_a

    check-cast v22, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_1d
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v20

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "e-props-correct.5"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto/16 :goto_16

    :cond_34
    move-object/from16 v4, v22

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_1d

    :cond_35
    const/4 v4, 0x0

    return-object v4

    :cond_36
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    if-eqz v4, :cond_37

    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v21

    if-eqz v21, :cond_38

    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_b

    if-nez v21, :cond_39

    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    goto/16 :goto_17

    :cond_37
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    goto :goto_1e

    :cond_38
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    goto :goto_1f

    :cond_39
    move-object/from16 v20, v21

    goto :goto_20
.end method
