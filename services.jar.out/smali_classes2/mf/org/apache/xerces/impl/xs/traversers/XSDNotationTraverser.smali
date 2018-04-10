.class Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDNotationTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v5

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v13, v5, v2

    check-cast v13, Ljava/lang/String;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    aget-object v16, v5, v2

    check-cast v16, Ljava/lang/String;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    aget-object v17, v5, v2

    check-cast v17, Ljava/lang/String;

    if-eqz v13, :cond_2

    if-eqz v17, :cond_3

    :cond_0
    :goto_0
    new-instance v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;-><init>()V

    iput-object v13, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v2, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fPublicId:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fSystemId:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    const/4 v8, 0x0

    if-nez v11, :cond_4

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_1
    if-nez v8, :cond_6

    sget-object v9, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_2
    iput-object v9, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v11, :cond_7

    :goto_3
    iget-object v2, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v14, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v15

    if-eqz v15, :cond_9

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v2, :cond_a

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v14

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const-string/jumbo v3, "s4s-att-must-appear"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 v2, 0x0

    return-object v2

    :cond_3
    if-nez v16, :cond_0

    const-string/jumbo v2, "PublicSystemOnNotation"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string/jumbo v16, "missing"

    goto/16 :goto_0

    :cond_4
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v5, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v8

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    new-instance v9, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v9}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v2, v9

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v10, v3

    const-string/jumbo v2, "(annotation?)"

    const/4 v3, 0x1

    aput-object v2, v10, v3

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v10, v3

    const-string/jumbo v2, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    if-nez v15, :cond_b

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v2, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    goto/16 :goto_6

    :cond_b
    move-object v14, v15

    goto :goto_7
.end method
