.class public Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;
.super Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.source "TR9401CatalogReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    iget-object v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    if-eqz v10, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    iget-boolean v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->caseSensitive:Z

    if-nez v10, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string/jumbo v10, "DELEGATE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_5

    :goto_2
    :try_start_1
    invoke-static {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-nez v8, :cond_6

    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    return-void

    :cond_2
    if-nez v8, :cond_3

    :goto_5
    :try_start_2
    iget-object v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    const/4 v10, 0x0

    iput-object v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :cond_3
    invoke-virtual {p1, v8}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    const/4 v8, 0x0

    goto :goto_5

    :cond_4
    move-object v4, v6

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "DELEGATE_PUBLIC"
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {p1, v8}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    new-instance v10, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v10, v4, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v10}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_8

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_b

    :goto_6
    return-void

    :cond_8
    if-eqz v8, :cond_9

    :goto_7
    :try_start_5
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move-object v8, v9

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v11, "Invalid catalog entry"

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_6
.end method
