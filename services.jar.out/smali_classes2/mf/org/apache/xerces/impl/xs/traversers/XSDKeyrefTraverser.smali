.class Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDKeyrefTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 11

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v5, v0, v8

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    aget-object v2, v0, v8

    check-cast v2, Lmf/org/apache/xerces/xni/QName;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, p3, v9, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-nez v7, :cond_3

    :goto_0
    if-eqz v3, :cond_6

    new-instance v4, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    iget-object v8, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v9, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v4, v8, v5, v9, v3}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    invoke-virtual {p0, v4, p1, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_0
    :goto_1
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string/jumbo v9, "s4s-att-must-appear"

    invoke-virtual {p0, v9, v8, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string/jumbo v9, "s4s-att-must-appear"

    invoke-virtual {p0, v9, v8, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_3
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    :cond_4
    move-object v3, v7

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, "identity constraint key/unique"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string/jumbo v9, "src-resolve"

    invoke-virtual {p0, v9, v8, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_7
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getFieldCount()I

    move-result v8

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getFieldCount()I

    move-result v9

    if-ne v8, v9, :cond_9

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v8

    if-eqz v8, :cond_a

    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v8, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    if-eqz v1, :cond_b

    :goto_3
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v8, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v8, :cond_0

    if-nez v1, :cond_c

    :cond_8
    :goto_4
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string/jumbo v9, "c-props-correct.2"

    invoke-virtual {p0, v9, v8, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p4, p2, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p4, p2, v4, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    instance-of v8, v1, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    if-eqz v8, :cond_8

    move-object v4, v1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    goto :goto_4
.end method
