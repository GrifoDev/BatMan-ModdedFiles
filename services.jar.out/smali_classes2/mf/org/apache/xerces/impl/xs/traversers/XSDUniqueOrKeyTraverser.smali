.class Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDUniqueOrKeyTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, p1, v7, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v3, v0, v5

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v4, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v5, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v6, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6, v8}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    :goto_0
    invoke-virtual {p0, v4, p1, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, "s4s-att-must-appear"

    invoke-virtual {p0, v6, v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_2
    new-instance v4, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v5, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v6, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-direct {v4, v5, v3, v6, v7}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v5

    if-eqz v5, :cond_4

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v5, :cond_0

    if-nez v1, :cond_6

    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p4, p2, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p4, p2, v4, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    instance-of v5, v1, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    goto :goto_4
.end method
