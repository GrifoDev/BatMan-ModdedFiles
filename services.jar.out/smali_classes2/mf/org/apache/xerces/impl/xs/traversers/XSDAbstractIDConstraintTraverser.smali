.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractIDConstraintTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z
    .locals 21

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_0
    :goto_0
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v15, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    if-nez v19, :cond_7

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    :cond_1
    :goto_1
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v16, v6, v3

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_a

    invoke-static/range {v16 .. v16}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    :try_start_0
    new-instance v18, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v20, Lmf/org/apache/xerces/impl/xs/identity/Selector;
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/Selector;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->setSelector(Lmf/org/apache/xerces/impl/xs/identity/Selector;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    if-eqz v10, :cond_b

    :goto_2
    if-eqz v10, :cond_11

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    if-nez v14, :cond_d

    :cond_2
    :goto_3
    if-nez v14, :cond_e

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    :goto_4
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v11, v6, v3

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_10

    invoke-static {v11}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_3
    new-instance v12, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v12, v11, v3, v4}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    new-instance v13, Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-object/from16 v0, p1

    invoke-direct {v13, v12, v0}, Lmf/org/apache/xerces/impl/xs/identity/Field;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addField(Lmf/org/apache/xerces/impl/xs/identity/Field;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "s4s-elt-must-match.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "identity constraint"

    const/4 v8, 0x0

    aput-object v7, v4, v8

    const-string/jumbo v7, "(annotation?, selector, field+)"

    const/4 v8, 0x1

    aput-object v7, v4, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    return v3

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v15

    if-nez v15, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "identity constraint"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?, selector, field+)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    return v3

    :cond_5
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "identity constraint"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?, selector, field+)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    return v3

    :cond_7
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_5
    if-eqz v19, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-att-must-appear"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v9

    :goto_6
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 v3, 0x0

    return v3

    :cond_b
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "identity constraint"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?, selector, field+)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    return v3

    :cond_c
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "identity constraint"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?, selector, field+)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    goto/16 :goto_2

    :cond_d
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_f
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-att-must-appear"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 v3, 0x0

    return v3

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 v3, 0x0

    return v3

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v3

    if-gtz v3, :cond_12

    const/4 v3, 0x0

    return v3

    :cond_12
    const/4 v3, 0x1

    return v3

    :catch_2
    move-exception v9

    move-object/from16 v17, v18

    goto/16 :goto_6

    :catch_3
    move-exception v9

    move-object/from16 v17, v18

    goto/16 :goto_6
.end method
