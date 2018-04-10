.class abstract Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.super Ljava/lang/Object;
.source "XSDAbstractTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    }
.end annotation


# static fields
.field protected static final CHILD_OF_GROUP:I = 0x4

.field protected static final GROUP_REF_WITH_ALL:I = 0x2

.field protected static final NOT_ALL_CONTEXT:I = 0x0

.field protected static final NO_NAME:Ljava/lang/String; = "(no name)"

.field protected static final PROCESSING_ALL_EL:I = 0x1

.field protected static final PROCESSING_ALL_GP:I = 0x8

.field private static final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# instance fields
.field protected fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field private fPattern:Ljava/lang/StringBuffer;

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidateAnnotations:Z

.field fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private final xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    return-void
.end method

.method private containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    :cond_0
    return v5

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    :cond_2
    return v6

    :cond_3
    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    return v5

    :cond_4
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    return v3

    :cond_5
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v6
.end method

.method private static escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x26

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0xd

    if-eq v0, v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "&#x9;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "&#xA;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "&#xD;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static processAttValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-static {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/16 v3, 0x3c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x26

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-ne v0, v3, :cond_0

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getDefinedFacets()S

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {p3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "enumeration-required-notation"

    invoke-virtual {p0, v1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 17

    move-object/from16 v0, p1

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    move-object/from16 v0, p1

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    sget v11, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    const/4 v12, 0x1

    shl-int v11, v12, v11

    int-to-long v12, v11

    and-long v12, v12, p5

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    const/4 v4, 0x1

    :goto_0
    sget v11, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    const/4 v12, 0x1

    shl-int v11, v12, v11

    int-to-long v12, v11

    and-long v12, v12, p5

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_1
    and-int/lit8 v11, p4, 0x1

    if-nez v11, :cond_6

    const/4 v9, 0x0

    :goto_2
    and-int/lit8 v11, p4, 0x8

    if-nez v11, :cond_7

    const/4 v10, 0x0

    :goto_3
    and-int/lit8 v11, p4, 0x2

    if-nez v11, :cond_8

    const/4 v5, 0x0

    :goto_4
    and-int/lit8 v11, p4, 0x4

    if-nez v11, :cond_9

    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_a

    :cond_0
    :goto_6
    if-eqz v8, :cond_c

    :cond_1
    if-nez v9, :cond_d

    if-eqz v10, :cond_f

    :cond_2
    const/4 v11, 0x1

    if-ne v7, v11, :cond_10

    :cond_3
    :goto_7
    move-object/from16 v0, p1

    iput v8, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    move-object/from16 v0, p1

    iput v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return-object p1

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    :goto_8
    if-nez v3, :cond_0

    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v2, v11

    const-string/jumbo v11, "maxOccurs"

    const/4 v12, 0x1

    aput-object v11, v2, v12

    const-string/jumbo v11, "s4s-att-not-allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v2, v11

    const-string/jumbo v11, "minOccurs"

    const/4 v12, 0x1

    aput-object v11, v2, v12

    const-string/jumbo v11, "s4s-att-not-allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    if-nez v7, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-short v11, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v11, 0x0

    return-object v11

    :cond_d
    const/4 v11, 0x1

    if-eq v7, v11, :cond_3

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "cos-all-limited.2"

    const/4 v11, -0x1

    if-eq v7, v11, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    :goto_9
    aput-object v11, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v12, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v7, 0x1

    const/4 v11, 0x1

    if-le v8, v11, :cond_3

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    const-string/jumbo v11, "unbounded"

    goto :goto_9

    :cond_f
    if-nez v5, :cond_2

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v11, "cos-all-limited.1.2"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v12, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v11, 0x1

    if-gt v8, v11, :cond_11

    :goto_a
    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_11
    const/4 v8, 0x1

    goto :goto_a
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void
.end method

.method reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_0
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    sget v22, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v5, p2, v22

    check-cast v5, Ljava/util/Vector;

    if-nez v5, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    :goto_0
    new-instance v22, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v22

    invoke-direct {v0, v11, v12}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v22

    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v17, v22, v23

    const-string/jumbo v23, "src-annotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_1
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_0

    :cond_3
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p4

    invoke-virtual {v0, v8, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_1

    :cond_4
    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    return-object v22

    :cond_6
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v13, 0x0

    move v14, v13

    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_9

    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v5, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v9, v0, :cond_7

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v22, v9, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v0, p4

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string/jumbo v23, "=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v5, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string/jumbo v23, "\" "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const-string/jumbo v18, ""

    move-object/from16 v16, v19

    goto :goto_4

    :cond_8
    add-int/lit8 v13, v13, 0x1

    move v14, v13

    goto/16 :goto_3

    :cond_9
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_a

    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v6, v6, v22

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v11, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    :goto_5
    new-instance v22, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v12}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v22

    :cond_a
    const/16 v22, 0x0

    return-object v22

    :cond_b
    new-instance v22, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    goto :goto_5

    :cond_c
    new-instance v22, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    goto/16 :goto_0
.end method

.method traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;
    .locals 20

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    :goto_0
    if-eqz v6, :cond_0

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_0
    if-nez v6, :cond_18

    :cond_1
    :goto_1
    return-object v6

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v6, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v15

    if-eqz v15, :cond_3

    iget-short v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v13

    if-eqz v13, :cond_5

    if-ne v13, v15, :cond_8

    :cond_3
    :goto_2
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    if-eqz p5, :cond_6

    const-string/jumbo v8, "ct-props-correct.5"

    :goto_3
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    const/16 v18, 0x2

    aput-object v10, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "ag-props-correct.3"

    goto :goto_3

    :cond_7
    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_4

    :cond_8
    if-eqz p5, :cond_9

    const-string/jumbo v8, "ct-props-correct.4"

    :goto_5
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_6
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v8, "ag-props-correct.2"

    goto :goto_5

    :cond_a
    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v6, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_14

    invoke-interface {v5, v9}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v12

    check-cast v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-short v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v13

    if-eqz v13, :cond_e

    if-ne v12, v13, :cond_11

    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    goto :goto_8

    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    if-eqz p5, :cond_f

    const-string/jumbo v8, "ct-props-correct.5"

    :goto_9
    if-eqz p5, :cond_10

    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_a
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    const/16 v18, 0x2

    aput-object v10, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_8

    :cond_f
    const-string/jumbo v8, "ag-props-correct.3"

    goto :goto_9

    :cond_10
    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_a

    :cond_11
    if-eqz p5, :cond_12

    const-string/jumbo v8, "ct-props-correct.4"

    :goto_b
    if-eqz p5, :cond_13

    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_c
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_8

    :cond_12
    const-string/jumbo v8, "ag-props-correct.2"

    goto :goto_b

    :cond_13
    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_c

    :cond_14
    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    if-eqz p5, :cond_16

    const-string/jumbo v8, "src-ct.4"

    :goto_d
    if-eqz p5, :cond_17

    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_e
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v8, "src-attribute_group.2"

    goto :goto_d

    :cond_17
    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_e

    :cond_18
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v6, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAnyAttribute(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    :goto_f
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v6

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_f

    :cond_1a
    if-eqz p5, :cond_1b

    const-string/jumbo v8, "src-ct.4"

    :goto_10
    if-eqz p5, :cond_1c

    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_11
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_f

    :cond_1b
    const-string/jumbo v8, "src-attribute_group.2"

    goto :goto_10

    :cond_1c
    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_11
.end method

.method traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    .locals 27

    const/16 v19, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v20

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v23, 0x0

    if-nez v20, :cond_1

    const/4 v14, 0x0

    :goto_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/XSFacets;->reset()V

    :goto_1
    if-eqz p1, :cond_0

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_0
    if-nez v13, :cond_27

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_28

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v3, v4, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;-><init>(Lmf/org/apache/xerces/impl/dv/XSFacets;Lmf/org/w3c/dom/Element;SS)V

    return-object v3

    :cond_1
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v6

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v15, v6, v3

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_6

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    aget-object v22, v6, v3

    check-cast v22, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    :cond_3
    :goto_4
    if-eqz v13, :cond_9

    :goto_5
    invoke-virtual {v13, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    if-nez v20, :cond_a

    :goto_6
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    if-nez v10, :cond_b

    :cond_4
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    :goto_7
    if-nez v10, :cond_d

    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-att-must-appear"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    :cond_7
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p3

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/16 v21, 0x0

    :try_start_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v7, 0x0

    invoke-interface {v3, v15, v4, v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x6

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    :goto_9
    if-eqz v21, :cond_8

    move-object/from16 v0, p3

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    goto/16 :goto_4

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    :cond_9
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    new-instance v12, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_b
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v6, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v3

    add-int/lit8 v26, v3, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v12, v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V

    goto/16 :goto_7

    :cond_d
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "enumeration"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v24, v6, v3

    check-cast v24, Ljava/lang/String;

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    if-nez v10, :cond_12

    :cond_f
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    :goto_b
    if-eqz v10, :cond_5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "pattern"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string/jumbo v4, "(annotation?)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_8

    :cond_10
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-att-must-appear"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_12
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v23, :cond_13

    :goto_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    goto :goto_b

    :cond_13
    new-instance v23, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    goto :goto_c

    :cond_14
    if-eqz v23, :cond_15

    :goto_d
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto/16 :goto_b

    :cond_15
    new-instance v23, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    goto :goto_d

    :cond_16
    const/4 v11, 0x2

    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    and-int v3, v19, v11

    if-nez v3, :cond_21

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    if-eqz v3, :cond_22

    or-int v3, v19, v11

    int-to-short v0, v3

    move/from16 v19, v0

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_24

    :goto_f
    sparse-switch v11, :sswitch_data_0

    :goto_10
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    const/4 v9, 0x0

    if-nez v10, :cond_25

    :cond_17
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_26

    :goto_11
    sparse-switch v11, :sswitch_data_1

    :goto_12
    if-eqz v10, :cond_5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const-string/jumbo v4, "(annotation?)"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_8

    :cond_18
    const/4 v11, 0x4

    goto :goto_e

    :cond_19
    const/16 v11, 0x40

    goto :goto_e

    :cond_1a
    const/16 v11, 0x20

    goto :goto_e

    :cond_1b
    const/16 v11, 0x80

    goto :goto_e

    :cond_1c
    const/16 v11, 0x100

    goto :goto_e

    :cond_1d
    const/16 v11, 0x200

    goto :goto_e

    :cond_1e
    const/16 v11, 0x400

    goto :goto_e

    :cond_1f
    const/16 v11, 0x10

    goto :goto_e

    :cond_20
    const/4 v11, 0x1

    goto :goto_e

    :cond_21
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const-string/jumbo v4, "src-single-facet-value"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    :cond_22
    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-eqz v3, :cond_23

    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    :cond_23
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v3, v7

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string/jumbo v4, "s4s-att-must-appear"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_13

    :cond_24
    or-int v3, v18, v11

    int-to-short v0, v3

    move/from16 v18, v0

    goto/16 :goto_f

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    goto/16 :goto_10

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    goto/16 :goto_10

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    goto/16 :goto_10

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    goto/16 :goto_10

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    goto/16 :goto_10

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    goto/16 :goto_10

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    goto/16 :goto_10

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    goto/16 :goto_10

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v3

    int-to-short v3, v3

    iput-short v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    goto/16 :goto_10

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    goto/16 :goto_10

    :cond_25
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v9

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    goto/16 :goto_11

    :cond_26
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v9

    goto/16 :goto_11

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :cond_27
    move/from16 v0, v19

    or-int/lit16 v3, v0, 0x800

    int-to-short v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v13, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v14, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v12, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_2

    :cond_28
    or-int/lit8 v3, v19, 0x8

    int-to-short v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, v23

    iput-object v0, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_8
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x400 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_a
        0x4 -> :sswitch_b
        0x10 -> :sswitch_12
        0x20 -> :sswitch_d
        0x40 -> :sswitch_c
        0x80 -> :sswitch_e
        0x100 -> :sswitch_f
        0x200 -> :sswitch_10
        0x400 -> :sswitch_11
    .end sparse-switch
.end method

.method traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 20

    move-object/from16 v8, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    sget v18, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v4, p3, v18

    check-cast v4, Ljava/util/Vector;

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    :goto_0
    new-instance v18, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v18

    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-object/from16 v0, p5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "\" "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v14, ""

    move-object v13, v15

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v18, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_4

    sget-object v18, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v5, v5, v18

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    :goto_3
    new-instance v18, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v9}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v18

    :cond_4
    const/16 v18, 0x0

    return-object v18

    :cond_5
    new-instance v18, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    goto :goto_3

    :cond_6
    new-instance v18, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    goto/16 :goto_0
.end method
