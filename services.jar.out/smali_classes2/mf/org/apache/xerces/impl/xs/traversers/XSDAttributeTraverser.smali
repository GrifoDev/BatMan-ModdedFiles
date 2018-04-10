.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAttributeTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    return-void
.end method

.method checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    return-void
.end method

.method protected traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 8

    const/4 v5, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v5, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v7
.end method

.method protected traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 26

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v20, v6, v3

    check-cast v20, Ljava/lang/String;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v21, v6, v3

    check-cast v21, Ljava/lang/String;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v23, v6, v3

    check-cast v23, Ljava/lang/String;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v24, v6, v3

    check-cast v24, Lmf/org/apache/xerces/xni/QName;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    aget-object v25, v6, v3

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/16 v17, 0x0

    const/4 v14, 0x0

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v6

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v17

    :goto_0
    const/16 v19, 0x0

    if-nez v20, :cond_9

    if-nez v21, :cond_a

    :goto_1
    const/16 v16, 0x0

    if-nez v17, :cond_b

    :goto_2
    if-nez v20, :cond_10

    :cond_0
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_11

    :cond_1
    :goto_4
    if-nez v20, :cond_12

    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v16

    :cond_3
    if-nez v24, :cond_4

    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    if-nez v18, :cond_6

    :cond_5
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    :goto_6
    if-nez v18, :cond_8

    :goto_7
    move-object/from16 v0, v24

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v23, v0

    goto :goto_0

    :cond_6
    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v14

    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v14

    goto :goto_6

    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v24

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "src-attribute.3.2"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_7

    :cond_9
    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v19, 0x2

    move-object/from16 v20, v21

    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-nez v3, :cond_c

    new-instance v16, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v3

    int-to-short v3, v3

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v0, v19

    int-to-short v3, v0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-nez v20, :cond_d

    :goto_9
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-eqz v3, :cond_e

    if-nez v14, :cond_f

    sget-object v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_a
    move-object/from16 v0, v16

    iput-object v15, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getAttributeUse()Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v16

    goto :goto_8

    :cond_d
    new-instance v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v20

    iput-object v0, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    goto :goto_9

    :cond_e
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_2

    :cond_f
    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v3, v15

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v14}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_a

    :cond_10
    if-eqz v21, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const-string/jumbo v4, "src-attribute.1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_3

    :cond_11
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const-string/jumbo v4, "src-attribute.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    goto/16 :goto_4

    :cond_12
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v3

    if-nez v3, :cond_14

    :goto_c
    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move-object/from16 v0, v16

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v3, :cond_2

    move-object/from16 v0, v16

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    :cond_13
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "au-props-correct.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto/16 :goto_5

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    aput-object v20, v3, v4

    const-string/jumbo v4, "a-props-correct.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto/16 :goto_b

    :cond_14
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const-string/jumbo v4, "a-props-correct.3"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto/16 :goto_c

    :cond_15
    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_5
.end method

.method traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 37

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v29, p2, v4

    check-cast v29, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v31, p2, v4

    check-cast v31, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v17, p2, v4

    check-cast v17, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v36, p2, v4

    check-cast v36, Lmf/org/apache/xerces/xni/QName;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-nez v4, :cond_b

    new-instance v16, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    :goto_0
    if-nez v17, :cond_c

    :goto_1
    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    if-nez p5, :cond_d

    if-nez p6, :cond_e

    :goto_2
    if-nez v31, :cond_f

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalAttributesQualified:Z

    if-nez v4, :cond_10

    :cond_0
    :goto_3
    const/4 v13, 0x0

    const/4 v11, 0x0

    if-nez p5, :cond_11

    :cond_1
    :goto_4
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v27

    const/16 v25, 0x0

    if-nez v27, :cond_13

    :cond_2
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14

    :goto_5
    const/4 v10, 0x0

    const/16 v32, 0x0

    if-nez v27, :cond_15

    :cond_3
    :goto_6
    if-eqz v10, :cond_16

    :cond_4
    :goto_7
    if-eqz v10, :cond_19

    :goto_8
    if-nez v25, :cond_1a

    sget-object v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_9
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    if-eqz v17, :cond_1b

    :goto_a
    if-nez v27, :cond_1d

    :goto_b
    if-nez v29, :cond_1e

    :cond_5
    :goto_c
    if-nez v32, :cond_1f

    :cond_6
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v10, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V

    if-nez v13, :cond_20

    :goto_e
    if-nez v13, :cond_21

    :cond_7
    :goto_f
    if-nez v17, :cond_22

    :cond_8
    if-nez v18, :cond_23

    :cond_9
    const-string/jumbo v4, "(no name)"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    if-nez p5, :cond_25

    :cond_a
    :goto_10
    return-object v16

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getAttributeDecl()Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v16

    goto :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :cond_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v12, 0x1

    goto :goto_3

    :cond_e
    move-object/from16 v14, p6

    const/4 v12, 0x2

    goto :goto_2

    :cond_f
    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_3

    :cond_10
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_3

    :cond_11
    if-nez v30, :cond_12

    if-eqz v29, :cond_1

    new-instance v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    move-object/from16 v0, v29

    iput-object v0, v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_12
    new-instance v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    move-object/from16 v0, v30

    iput-object v0, v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v11, 0x2

    goto/16 :goto_4

    :cond_13
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v25

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v27

    goto/16 :goto_5

    :cond_14
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v25

    goto/16 :goto_5

    :cond_15
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v28

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v10

    const/16 v32, 0x1

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v27

    goto/16 :goto_6

    :cond_16
    if-eqz v36, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x7

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-virtual {v4, v0, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v35, :cond_18

    :cond_17
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v36

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "simpleType definition"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "src-resolve"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    if-nez v35, :cond_4

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    goto/16 :goto_7

    :cond_18
    invoke-interface/range {v35 .. v35}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_17

    move-object/from16 v10, v35

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto/16 :goto_7

    :cond_19
    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto/16 :goto_8

    :cond_1a
    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v4, v15

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto/16 :goto_9

    :cond_1b
    if-nez p5, :cond_1c

    const-string/jumbo v4, "src-attribute.3.1"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_11
    const-string/jumbo v17, "(no name)"

    goto/16 :goto_a

    :cond_1c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "s4s-att-must-appear"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_11

    :cond_1d
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const-string/jumbo v5, "(annotation?, (simpleType?))"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string/jumbo v5, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_1e
    if-eqz v30, :cond_5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const-string/jumbo v5, "src-attribute.1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_c

    :cond_1f
    if-eqz v36, :cond_6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const-string/jumbo v5, "src-attribute.4"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_d

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v33

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    iget-object v5, v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "a-props-correct.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v10

    move/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    invoke-virtual/range {v16 .. v24}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    goto/16 :goto_e

    :cond_21
    invoke-interface {v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const-string/jumbo v5, "a-props-correct.3"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v10

    move/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    invoke-virtual/range {v16 .. v24}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    goto/16 :goto_f

    :cond_22
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "no-xmlns"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x0

    return-object v4

    :cond_23
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "no-xsi"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x0

    return-object v4

    :cond_24
    const/4 v4, 0x0

    return-object v4

    :cond_25
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-eqz v4, :cond_26

    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v26

    if-eqz v26, :cond_27

    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_a

    if-nez v26, :cond_28

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    goto/16 :goto_10

    :cond_26
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    goto :goto_12

    :cond_27
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    goto :goto_13

    :cond_28
    move-object/from16 v16, v26

    goto :goto_14
.end method
