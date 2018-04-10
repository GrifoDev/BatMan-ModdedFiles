.class Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDSimpleTypeTraverser.java"


# instance fields
.field private fIsBuiltIn:Z


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return-void
.end method

.method private final checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p2, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    goto :goto_0
.end method

.method private errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 12

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sparse-switch p3, :sswitch_data_0

    return-object v5

    :sswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :sswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v0, 0x1

    new-array v10, v0, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v4, v10, v3

    move-object v7, p1

    move-object v8, p2

    move v9, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, p5, v2, p3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-ne v1, v7, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v1, :cond_4

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v1

    and-int/2addr v1, p4

    if-nez v1, :cond_6

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0

    :cond_1
    return-object v3

    :cond_2
    return-object v3

    :cond_3
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v6

    const-string/jumbo v2, "cos-st-restricts.1.1"

    invoke-virtual {p0, v2, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_4
    if-ne p4, v5, :cond_0

    iget-object v1, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v6

    const-string/jumbo v2, "cos-st-restricts.1.1"

    invoke-virtual {p0, v2, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_5
    return-object v3

    :cond_6
    if-eq p4, v5, :cond_7

    if-eq p4, v7, :cond_8

    const/16 v1, 0x8

    if-eq p4, v1, :cond_9

    :goto_0
    return-object v3

    :cond_7
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string/jumbo v2, "st-props-correct.3"

    invoke-virtual {p0, v2, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_8
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v6

    const-string/jumbo v2, "cos-st-restricts.2.3.1.1"

    invoke-virtual {p0, v2, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_9
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v6

    const-string/jumbo v2, "cos-st-restricts.3.3.1.1"

    invoke-virtual {p0, v2, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "#AnonType_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 47

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v34, p3, v4

    check-cast v34, Lmf/org/apache/xerces/impl/xs/util/XInt;

    if-eqz v34, :cond_1

    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v35

    :goto_0
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v27

    const/16 v25, 0x0

    if-nez v27, :cond_2

    :cond_0
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v5, v27

    :goto_1
    if-eqz v5, :cond_5

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v46

    const/4 v12, 0x2

    const/16 v42, 0x0

    const/16 v38, 0x0

    const/16 v45, 0x0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "(annotation?, (restriction | list | union))"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const/4 v8, 0x2

    aput-object v46, v4, v8

    const-string/jumbo v8, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    return-object v4

    :cond_1
    move-object/from16 v0, p4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    move/from16 v35, v0

    goto :goto_0

    :cond_2
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    if-nez v24, :cond_3

    :goto_2
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    move-object/from16 v5, v27

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "(annotation?, (restriction | list | union))"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const-string/jumbo v8, "s4s-elt-must-match.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    return-object v4

    :cond_6
    const/4 v12, 0x2

    const/16 v42, 0x1

    :goto_3
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v41

    if-nez v41, :cond_12

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    if-nez v42, :cond_13

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    :goto_5
    aget-object v11, v7, v4

    check-cast v11, Lmf/org/apache/xerces/xni/QName;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    aget-object v39, v7, v4

    check-cast v39, Ljava/util/Vector;

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    if-nez v28, :cond_14

    :cond_7
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_17

    :goto_6
    const/16 v17, 0x0

    if-eqz v42, :cond_19

    :cond_8
    if-nez v11, :cond_1a

    :goto_7
    move-object/from16 v26, v17

    :goto_8
    const/16 v29, 0x0

    const/16 v30, 0x0

    if-nez v45, :cond_1d

    :cond_9
    if-nez v28, :cond_21

    :cond_a
    if-eqz v42, :cond_2e

    :cond_b
    if-eqz v11, :cond_2f

    :goto_9
    if-nez v45, :cond_31

    :goto_a
    move-object/from16 v17, v26

    :goto_b
    if-eqz v42, :cond_34

    :cond_c
    if-eqz v17, :cond_35

    :goto_c
    if-nez v45, :cond_37

    :goto_d
    if-nez v38, :cond_3a

    :cond_d
    const/16 v40, 0x0

    if-nez v42, :cond_3b

    if-nez v38, :cond_3d

    if-nez v45, :cond_3f

    :goto_e
    if-nez v42, :cond_41

    :cond_e
    :goto_f
    if-nez v28, :cond_43

    :cond_f
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v40

    :cond_10
    const/16 v12, 0x10

    const/16 v38, 0x1

    goto :goto_3

    :cond_11
    const/16 v12, 0x8

    const/16 v45, 0x1

    goto :goto_3

    :cond_12
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "(annotation?, (restriction | list | union))"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    invoke-static/range {v41 .. v41}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const-string/jumbo v8, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_13
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    goto :goto_5

    :cond_14
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    if-nez v24, :cond_15

    :goto_11
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    goto/16 :goto_6

    :cond_15
    if-eqz v25, :cond_16

    const/4 v4, 0x2

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v44, v0

    const/4 v4, 0x0

    aget-object v4, v25, v4

    const/4 v8, 0x0

    aput-object v4, v44, v8

    move-object/from16 v25, v44

    const/4 v4, 0x1

    aput-object v24, v44, v4

    goto :goto_11

    :cond_16
    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    goto :goto_11

    :cond_17
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    if-eqz v25, :cond_18

    const/4 v4, 0x2

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v44, v0

    const/4 v4, 0x0

    aget-object v4, v25, v4

    const/4 v8, 0x0

    aput-object v4, v44, v8

    move-object/from16 v25, v44

    const/4 v4, 0x1

    aput-object v24, v44, v4

    goto/16 :goto_6

    :cond_18
    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    goto/16 :goto_6

    :cond_19
    if-nez v38, :cond_8

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v17

    if-eqz v17, :cond_1c

    :cond_1b
    move-object/from16 v26, v17

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    const/4 v4, 0x0

    return-object v4

    :cond_1d
    if-eqz v39, :cond_9

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v43

    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v36, 0x0

    :goto_12
    move/from16 v0, v36

    move/from16 v1, v43

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmf/org/apache/xerces/xni/QName;

    const/16 v17, 0x8

    move-object/from16 v13, p0

    move-object v14, v5

    move-object/from16 v15, p1

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v18}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v30

    if-nez v30, :cond_1f

    :cond_1e
    :goto_13
    add-int/lit8 v36, v36, 0x1

    goto :goto_12

    :cond_1f
    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v8, 0x3

    if-eq v4, v8, :cond_20

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_20
    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v31

    const/16 v37, 0x0

    :goto_14
    invoke-interface/range {v31 .. v31}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_1e

    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v37, v37, 0x1

    goto :goto_14

    :cond_21
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v42, :cond_23

    :cond_22
    if-nez v11, :cond_24

    :goto_15
    if-eqz v26, :cond_26

    move-object/from16 v17, v26

    :goto_16
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    goto/16 :goto_b

    :cond_23
    if-nez v38, :cond_22

    if-nez v45, :cond_27

    move-object/from16 v17, v26

    goto/16 :goto_b

    :cond_24
    if-nez v38, :cond_25

    const-string/jumbo v4, "src-simple-type.2.a"

    :goto_17
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_15

    :cond_25
    const-string/jumbo v4, "src-simple-type.3.a"

    goto :goto_17

    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v17

    goto :goto_16

    :cond_27
    if-eqz v29, :cond_2a

    :cond_28
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v30

    if-nez v30, :cond_2b

    :cond_29
    :goto_19
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    if-nez v28, :cond_2d

    move-object/from16 v17, v26

    goto/16 :goto_b

    :cond_2a
    new-instance v29, Ljava/util/ArrayList;

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_18

    :cond_2b
    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v8, 0x3

    if-eq v4, v8, :cond_2c

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2c
    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v31

    const/16 v37, 0x0

    :goto_1a
    invoke-interface/range {v31 .. v31}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_29

    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v37, v37, 0x1

    goto :goto_1a

    :cond_2d
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v17, v26

    goto/16 :goto_b

    :cond_2e
    if-nez v38, :cond_b

    goto/16 :goto_9

    :cond_2f
    if-nez v38, :cond_30

    const-string/jumbo v4, "src-simple-type.2.b"

    :goto_1b
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v17, v26

    goto/16 :goto_b

    :cond_30
    const-string/jumbo v4, "src-simple-type.3.b"

    goto :goto_1b

    :cond_31
    if-nez v39, :cond_33

    :cond_32
    const-string/jumbo v4, "src-union-memberTypes-or-simpleTypes"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v17, v26

    goto/16 :goto_b

    :cond_33
    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_32

    goto/16 :goto_a

    :cond_34
    if-nez v38, :cond_c

    goto/16 :goto_c

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v42, :cond_36

    const/16 v4, 0x10

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    return-object v4

    :cond_36
    const/4 v4, 0x2

    goto :goto_1c

    :cond_37
    if-nez v29, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v8, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    return-object v4

    :cond_39
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_38

    goto/16 :goto_d

    :cond_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const-string/jumbo v8, "cos-st-restricts.2.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v8, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    return-object v4

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v13, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v16, v0

    if-eqz v25, :cond_3c

    new-instance v18, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1d
    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_e

    :cond_3c
    const/16 v18, 0x0

    goto :goto_1d

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v13, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v16, v0

    if-eqz v25, :cond_3e

    new-instance v18, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1e
    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_e

    :cond_3e
    const/16 v18, 0x0

    goto :goto_1e

    :cond_3f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v21, v0

    if-eqz v25, :cond_40

    new-instance v23, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1f
    move-object/from16 v19, p1

    invoke-virtual/range {v18 .. v23}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_e

    :cond_40
    const/16 v23, 0x0

    goto :goto_1f

    :cond_41
    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    move-object/from16 v28, v0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p4

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    move-object/from16 v0, v33

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, v33

    iget-short v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    move-object/from16 v0, v33

    iget-short v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v40

    invoke-interface {v0, v4, v8, v9, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v32

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v13, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v16, v0

    if-eqz v25, :cond_42

    new-instance v18, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_20
    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_f

    :cond_42
    const/16 v18, 0x0

    goto :goto_20

    :cond_43
    if-nez v42, :cond_44

    if-nez v38, :cond_45

    if-eqz v45, :cond_f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "(annotation?, (simpleType*))"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const-string/jumbo v8, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_10

    :cond_44
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const-string/jumbo v8, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_10

    :cond_45
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "(annotation?, (simpleType?))"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const-string/jumbo v8, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_10
.end method

.method private isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    return v4

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-eq v2, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 6

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, p1, v8, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    if-eqz v2, :cond_2

    :goto_1
    if-nez v3, :cond_3

    :cond_0
    :goto_2
    return-object v3

    :cond_1
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const-string/jumbo v6, "(no name)"

    aput-object v6, v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, "s4s-att-must-appear"

    invoke-virtual {p0, v6, v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_5

    :goto_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-eqz v4, :cond_6

    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v5, :cond_0

    if-nez v4, :cond_7

    :cond_4
    :goto_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p3, v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    instance-of v5, v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v5, :cond_4

    move-object v3, v4

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_5
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v6

    instance-of v0, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v6

    :cond_0
    move-object v0, v6

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    goto :goto_0
.end method
