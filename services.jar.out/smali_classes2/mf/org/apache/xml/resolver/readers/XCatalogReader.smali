.class public Lmf/org/apache/xml/resolver/readers/XCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "XCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# instance fields
.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v3, -0x1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const-string/jumbo v4, "Base"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "Delegate"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "Extend"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "Map"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "Remap"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "XCatalog"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_0
    if-gez v3, :cond_7

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    const-string/jumbo v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "HRef"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Base"

    invoke-virtual {v4, v8, v6, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string/jumbo v4, "PublicID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "Delegate"

    const-string/jumbo v6, "PublicID"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "HRef"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    const-string/jumbo v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "HRef"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Extend"

    invoke-virtual {v4, v8, v6, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const-string/jumbo v4, "PublicID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "Map"

    const-string/jumbo v6, "PublicID"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "HRef"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const-string/jumbo v4, "SystemID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "Remap"

    const-string/jumbo v6, "SystemID"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "HRef"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "Invalid catalog entry type"

    invoke-virtual {v4, v9, v5, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_0
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v0, v3, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "Invalid catalog entry"

    invoke-virtual {v4, v9, v5, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "Invalid catalog entry type"

    invoke-virtual {v4, v9, v5, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
