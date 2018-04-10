.class public Lmf/org/apache/xml/resolver/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"


# static fields
.field public static final BASE:I

.field public static final CATALOG:I

.field public static final DELEGATE_PUBLIC:I

.field public static final DELEGATE_SYSTEM:I

.field public static final DELEGATE_URI:I

.field public static final DOCTYPE:I

.field public static final DOCUMENT:I

.field public static final DTDDECL:I

.field public static final ENTITY:I

.field public static final LINKTYPE:I

.field public static final NOTATION:I

.field public static final OVERRIDE:I

.field public static final PUBLIC:I

.field public static final REWRITE_SYSTEM:I

.field public static final REWRITE_URI:I

.field public static final SGMLDECL:I

.field public static final SYSTEM:I

.field public static final SYSTEM_SUFFIX:I

.field public static final URI:I

.field public static final URI_SUFFIX:I


# instance fields
.field protected base:Ljava/net/URL;

.field protected catalogCwd:Ljava/net/URL;

.field protected catalogEntries:Ljava/util/Vector;

.field protected catalogFiles:Ljava/util/Vector;

.field protected catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field protected catalogs:Ljava/util/Vector;

.field protected default_override:Z

.field protected localCatalogFiles:Ljava/util/Vector;

.field protected localDelegate:Ljava/util/Vector;

.field protected readerArr:Ljava/util/Vector;

.field protected readerMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x2

    const-string/jumbo v0, "BASE"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    const-string/jumbo v0, "CATALOG"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    const-string/jumbo v0, "DOCUMENT"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    const-string/jumbo v0, "OVERRIDE"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    const-string/jumbo v0, "SGMLDECL"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    const-string/jumbo v0, "DELEGATE_PUBLIC"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string/jumbo v0, "DELEGATE_SYSTEM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    const-string/jumbo v0, "DELEGATE_URI"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    const-string/jumbo v0, "DOCTYPE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    const-string/jumbo v0, "DTDDECL"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    const-string/jumbo v0, "ENTITY"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    const-string/jumbo v0, "LINKTYPE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    const-string/jumbo v0, "NOTATION"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    const-string/jumbo v0, "PUBLIC"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const-string/jumbo v0, "SYSTEM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const-string/jumbo v0, "URI"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    const-string/jumbo v0, "REWRITE_SYSTEM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    const-string/jumbo v0, "REWRITE_URI"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    const-string/jumbo v0, "SYSTEM_SUFFIX"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    const-string/jumbo v0, "URI_SUFFIX"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-void
.end method


# virtual methods
.method protected addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v1, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5, p1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1
    return-void

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v16

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    sget v20, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v19

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BASE CUR"

    const/16 v23, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BASE STR"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v9, :cond_2

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BASE NEW"

    const/16 v23, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BASE CUR"

    const-string/jumbo v22, "null"

    const/16 v23, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    new-instance v9, Ljava/net/URL;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "file:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Malformed URL on base"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    goto/16 :goto_3

    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "CATALOG"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "PUBLIC"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v12, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "SYSTEM"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v15, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "URI"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "DOCUMENT"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "OVERRIDE"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "SGMLDECL"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "DELEGATE_PUBLIC"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto/16 :goto_0

    :cond_b
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "DELEGATE_SYSTEM"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v11, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto/16 :goto_0

    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "DELEGATE_URI"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v13, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto/16 :goto_0

    :cond_d
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "REWRITE_SYSTEM"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v11, v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "REWRITE_URI"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v13, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "SYSTEM_SUFFIX"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v13, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "URI_SUFFIX"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v13, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "DOCTYPE"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const-string/jumbo v21, "DTDDECL"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v7, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "ENTITY"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "LINKTYPE"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "NOTATION"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected copyReaders(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 7

    new-instance v2, Ljava/util/Vector;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/readers/CatalogReader;

    invoke-virtual {p1, v3, v5}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected encodedByte(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-object v0
.end method

.method public getCurrentBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultOverride()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "no"

    return-object v0

    :cond_0
    const-string/jumbo v0, "yes"

    return-object v0
.end method

.method public loadSystemCatalogs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-direct {v2, v3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "Malformed URL on system identifier"

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected newCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->copyReaders(Lmf/org/apache/xml/resolver/Catalog;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    :catch_0
    move-exception v3

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Class Not Found Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_0
    new-instance v0, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->copyReaders(Lmf/org/apache/xml/resolver/Catalog;)V

    return-object v0

    :catch_1
    move-exception v5

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Illegal Access Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v6

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Instantiation Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Class Cast Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v4

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Other Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected normalizeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/16 v7, 0x7f

    const-string/jumbo v3, ""

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    aget-byte v5, v0, v2

    and-int/lit16 v1, v5, 0xff

    const/16 v5, 0x20

    if-gt v1, v5, :cond_2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Catalog;->encodedByte(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    :catch_0
    move-exception v4

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v5, v5, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v6, "UTF-8 is an unsupported encoding!?"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object p1

    :cond_2
    if-gt v1, v7, :cond_0

    const/16 v5, 0x22

    if-eq v1, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v1, v5, :cond_0

    const/16 v5, 0x3e

    if-eq v1, v5, :cond_0

    const/16 v5, 0x5c

    if-eq v1, v5, :cond_0

    const/16 v5, 0x5e

    if-eq v1, v5, :cond_0

    const/16 v5, 0x60

    if-eq v1, v5, :cond_0

    const/16 v5, 0x7b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x7c

    if-eq v1, v5, :cond_0

    const/16 v5, 0x7d

    if-eq v1, v5, :cond_0

    if-eq v1, v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, v0, v2

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public parseAllCatalogs()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v7, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/Catalog;->parseAllCatalogs()V

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-ne v7, v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-eq v7, v8, :cond_1

    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public declared-synchronized parseCatalog(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Parse catalog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parseCatalog(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Parse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " catalog on input stream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2, p0, p2}, Lmf/org/apache/xml/resolver/readers/CatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xml/resolver/readers/CatalogReader;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No CatalogReader for MIME type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance v3, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized parseCatalog(Ljava/net/URL;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v7}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v7

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Parse catalog: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v5, :cond_1

    move-object v3, v4

    :cond_0
    :goto_1
    if-nez v5, :cond_2

    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v6, p0, v3}, Lmf/org/apache/xml/resolver/readers/CatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x1

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_0

    goto :goto_3

    :catch_2
    move-exception v7

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_3
    move-object v3, v4

    goto :goto_1
.end method

.method protected declared-synchronized parseCatalogFile(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v12, "basename"

    invoke-static {v12}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v13, "Loading catalog"

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v13, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Default BASE"

    const/4 v15, 0x4

    invoke-virtual {v12, v15, v14, v13}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v7, v6

    :goto_2
    if-eqz v9, :cond_1

    move-object v6, v7

    :cond_0
    :goto_3
    if-eqz v9, :cond_2

    :goto_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v12, "user.dir"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5c

    const/16 v13, 0x2f

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v13, "Malformed URL on cwd"

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :catch_1
    move-exception v3

    :try_start_4
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "file:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v13, "Malformed URL on catalog filename"

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v13, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v2, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v12, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    :try_start_6
    new-instance v6, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object/from16 v0, p0

    invoke-interface {v10, v0, v6}, Lmf/org/apache/xml/resolver/readers/CatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_7
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v9, 0x1

    :goto_5
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v7, v6

    goto/16 :goto_2

    :catch_3
    move-exception v5

    const/4 v8, 0x1

    move-object v6, v7

    goto/16 :goto_3

    :catch_4
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v12

    const/4 v13, 0x7

    if-eq v12, v13, :cond_0

    goto :goto_5

    :catch_5
    move-exception v12

    goto :goto_6

    :cond_2
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v13, "Failed to parse catalog"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v13, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v13, "Catalog does not exist"

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v13, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :cond_4
    move-object v6, v7

    goto/16 :goto_3
.end method

.method protected declared-synchronized parsePendingCatalogs()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_0
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_3
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    :try_start_3
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    :cond_3
    const/4 v2, 0x0

    :goto_7
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4
    iput-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :try_start_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalogFile(Ljava/lang/String;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FIXME: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_a
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    iput-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    goto/16 :goto_4

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method public resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resolveDoctype("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_6

    :cond_0
    :goto_0
    if-nez p3, :cond_7

    :cond_1
    :goto_1
    if-nez p3, :cond_a

    :cond_2
    if-nez p2, :cond_b

    :cond_3
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-eq v4, v5, :cond_c

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    if-ne v4, v5, :cond_4

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_d

    :cond_5
    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    const-string/jumbo v4, "urn:publicid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "urn:publicid:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_9

    :cond_8
    move-object p2, p3

    const/4 p3, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v4, v9, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_b
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_c
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "YES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_e
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public resolveDocument()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v2, v2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v3, "resolveDocument"

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    sget v2, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    invoke-virtual {p0, v2, v5, v5, v5}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resolveEntity("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_6

    :cond_0
    :goto_0
    if-nez p3, :cond_7

    :cond_1
    :goto_1
    if-nez p3, :cond_a

    :cond_2
    if-nez p2, :cond_b

    :cond_3
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-eq v4, v5, :cond_c

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    if-ne v4, v5, :cond_4

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_d

    :cond_5
    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    const-string/jumbo v4, "urn:publicid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "urn:publicid:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_9

    :cond_8
    move-object p2, p3

    const/4 p3, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v4, v9, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_b
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_c
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "YES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_e
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected declared-synchronized resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p4, :cond_3

    :cond_0
    iget-boolean v7, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-eq v10, v11, :cond_4

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v7, :cond_5

    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    monitor-exit p0

    return-object v10

    :cond_3
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_0

    monitor-exit p0

    return-object v9

    :cond_4
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "YES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_2

    goto :goto_0

    :cond_6
    iget-boolean v7, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-eq v10, v11, :cond_9

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-ne v10, v11, :cond_7

    if-eqz v7, :cond_a

    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_9
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "YES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto :goto_1

    :cond_a
    if-eqz p4, :cond_8

    goto :goto_1

    :cond_b
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-gtz v10, :cond_c

    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_c
    :try_start_4
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->getDebug()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_e

    :cond_d
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v11, "Switching to delegated catalog(s):"

    const/4 v12, 0x2

    invoke-virtual {v10, v12, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\t"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v10, v12, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_3

    :cond_f
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v10}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    monitor-exit p0

    return-object v10
.end method

.method protected resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v14, "os.name"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "Windows"

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_2

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    if-ne v14, v15, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_1
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_2
    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    if-eqz v13, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v9, 0x0

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    if-ne v14, v15, :cond_5

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v10, :cond_7

    :cond_6
    move-object v10, v8

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_6

    goto :goto_2

    :cond_8
    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    if-ne v14, v15, :cond_9

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-nez v11, :cond_c

    :cond_a
    move-object v11, v8

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_a

    goto :goto_3

    :cond_d
    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_e
    :goto_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-ne v14, v15, :cond_e

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_f
    return-object v12

    :cond_10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v14

    if-gtz v14, :cond_11

    const/4 v14, 0x0

    return-object v14

    :cond_11
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v14, v14, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->getDebug()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v14, v14, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v15, "Switching to delegated catalog(s):"

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_6
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v14, v14, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "\t"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_6

    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method protected resolveLocalURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v11

    sget v12, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_1
    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v7, 0x0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v11

    sget v12, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    if-ne v11, v12, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-nez v8, :cond_4

    :cond_3
    move-object v8, v6

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_3

    goto :goto_0

    :cond_5
    if-nez v7, :cond_8

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v11

    sget v12, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    if-ne v11, v12, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v9, :cond_9

    :cond_7
    move-object v9, v6

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_7

    goto :goto_1

    :cond_a
    if-nez v10, :cond_c

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v11

    sget v12, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    if-ne v11, v12, :cond_b

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    return-object v10

    :cond_d
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v11

    if-gtz v11, :cond_e

    const/4 v11, 0x0

    return-object v11

    :cond_e
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->getDebug()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_10

    :cond_f
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v12, "Switching to delegated catalog(s):"

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\t"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :cond_11
    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resolveNotation("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_6

    :cond_0
    :goto_0
    if-nez p3, :cond_7

    :cond_1
    :goto_1
    if-nez p3, :cond_a

    :cond_2
    if-nez p2, :cond_b

    :cond_3
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-eq v4, v5, :cond_c

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    if-ne v4, v5, :cond_4

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_d

    :cond_5
    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    const-string/jumbo v4, "urn:publicid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "urn:publicid:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_9

    :cond_8
    move-object p2, p3

    const/4 p3, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v4, v9, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_b
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_c
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "YES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_e
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resolvePublic("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    :cond_0
    :goto_0
    if-nez p2, :cond_4

    :cond_1
    :goto_1
    if-nez p2, :cond_7

    :cond_2
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    invoke-virtual {p0, v1, v4, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    invoke-virtual {p0, v1, v4, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const-string/jumbo v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "urn:publicid:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_6

    :cond_5
    move-object p1, p2

    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "urn:publicid: system identifier differs from public identifier; using public identifier"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_8
    return-object v0
.end method

.method protected declared-synchronized resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-ge v1, v8, :cond_8

    const/4 v0, 0x0

    :try_start_1
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v7, 0x0

    :try_start_2
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    if-eq p1, v8, :cond_0

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    if-eq p1, v8, :cond_1

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    if-eq p1, v8, :cond_2

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    if-eq p1, v8, :cond_3

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    if-eq p1, v8, :cond_4

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    if-eq p1, v8, :cond_5

    sget v8, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    if-eq p1, v8, :cond_6

    :goto_2
    if-nez v7, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_1
    move-exception v6

    :try_start_5
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v9, "Malformed Catalog URL"

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v4

    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string/jumbo v10, "Failed to load catalog, file not found"

    invoke-virtual {v8, v9, v10, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v5

    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v9, "Failed to load catalog, I/O error"

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveDocument()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p2, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p2, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    goto :goto_2

    :cond_7
    monitor-exit p0

    return-object v7

    :cond_8
    const/4 v8, 0x0

    monitor-exit p0

    return-object v8
.end method

.method public resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resolveSystem("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    invoke-virtual {p0, v1, v4, v4, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0
.end method

.method public resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resolveURI("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    invoke-virtual {p0, v1, v4, v4, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0
.end method

.method public setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-void
.end method

.method public setupReaders()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const-string/jumbo v3, "XCatalog"

    const-string/jumbo v4, "org.apache.xml.resolver.readers.XCatalogReader"

    invoke-virtual {v0, v5, v3, v4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string/jumbo v4, "catalog"

    const-string/jumbo v5, "org.apache.xml.resolver.readers.OASISXMLCatalogReader"

    invoke-virtual {v0, v3, v4, v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "application/xml"

    invoke-virtual {p0, v3, v0}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    new-instance v2, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;-><init>()V

    const-string/jumbo v3, "text/plain"

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    return-void
.end method

.method public unknownEntry(Ljava/util/Vector;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Unrecognized token parsing catalog"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
