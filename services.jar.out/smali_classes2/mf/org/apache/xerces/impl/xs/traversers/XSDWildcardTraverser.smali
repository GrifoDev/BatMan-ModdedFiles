.class Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDWildcardTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseAny(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, p1, v6, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v4

    const/4 v3, 0x0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v3

    :cond_1
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v5, v0, v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v5, v0, v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-nez v5, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_1
    const/4 v5, 0x2

    iput-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput v2, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v5, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v3

    goto :goto_1
.end method

.method traverseAnyAttribute(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v2, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1
.end method

.method traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 12

    new-instance v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v9, p2, v0

    check-cast v9, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aget-object v0, p2, v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    aget-object v10, p2, v0

    check-cast v10, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    const/4 v6, 0x0

    if-nez v8, :cond_1

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    if-nez v6, :cond_5

    sget-object v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_1
    iput-object v7, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-object v11

    :cond_1
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    if-eqz v8, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "wildcard"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string/jumbo v1, "(annotation?)"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string/jumbo v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v8, p2, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    goto :goto_0

    :cond_5
    new-instance v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v0, v7

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_1
.end method
