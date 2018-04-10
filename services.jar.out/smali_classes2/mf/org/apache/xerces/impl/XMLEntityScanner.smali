.class public Lmf/org/apache/xerces/impl/XMLEntityScanner;
.super Ljava/lang/Object;
.source "XMLEntityScanner.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# static fields
.field private static final DEBUG_BUFFER:Z

.field private static final DEBUG_ENCODINGS:Z

.field private static final END_OF_DOCUMENT_ENTITY:Ljava/io/EOFException;


# instance fields
.field protected fBufferSize:I

.field protected fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

.field private fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->END_OF_DOCUMENT_ENTITY:Ljava/io/EOFException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/16 v0, 0x800

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fBufferSize:I

    return-void
.end method


# virtual methods
.method public final getBaseSystemId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCharacterOffset()I
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getCharacterOffset()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getColumnNumber()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpandedSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getLineNumber()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    return v0
.end method

.method public final getLiteralSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getXMLVersion()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    return v0
.end method

.method final load(IZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v3, v3

    sub-int v2, v3, p1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v3, v4, p1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v1, 0x1

    if-nez p2, :cond_4

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    const/16 v2, 0x40

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    add-int v4, v0, p1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->endEntity()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v7, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_1

    :cond_5
    sget-object v3, Lmf/org/apache/xerces/impl/XMLEntityScanner;->END_OF_DOCUMENT_ENTITY:Ljava/io/EOFException;

    throw v3
.end method

.method public peekChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa

    :cond_2
    return v0
.end method

.method public final reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public scanChar()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v2, v3, :cond_2

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v2, v4

    const/4 v1, 0x0

    if-ne v0, v8, :cond_3

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v7, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v2, v3, :cond_4

    :goto_1
    if-eq v0, v9, :cond_5

    :cond_1
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v0

    :cond_2
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_3
    if-ne v0, v9, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v3, v0

    int-to-char v3, v3

    aput-char v3, v2, v6

    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v2, v4

    if-ne v2, v8, :cond_6

    :goto_3
    const/16 v0, 0xa

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_3
.end method

.method public scanContent(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0xd

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_4

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v5

    const/4 v4, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-ne v0, v12, :cond_5

    :cond_0
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    if-eq v0, v13, :cond_a

    :cond_1
    if-eq v0, v12, :cond_e

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_2
    move v2, v5

    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v2, v6, :cond_f

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v12, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v10

    invoke-virtual {p0, v11, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_0

    :cond_5
    if-eq v0, v13, :cond_9

    :cond_6
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v6, v7, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isContent(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v8, v3, v4

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_10

    const/4 v0, -0x1

    :cond_8
    :goto_4
    return v0

    :cond_9
    if-nez v1, :cond_0

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_c

    :goto_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v6, v6, v7

    if-eq v6, v12, :cond_d

    add-int/lit8 v4, v4, 0x1

    :cond_b
    :goto_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {p0, v4, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_5

    :cond_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_b

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {p0, v4, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_6

    :cond_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    const/4 v6, -0x1

    return v6

    :cond_10
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    if-ne v0, v13, :cond_8

    if-eqz v1, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_4
.end method

.method public scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v12, v13, :cond_4

    :goto_0
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v13, v4

    if-gt v12, v13, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v13, v4

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v11, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v2, v12, v11

    const/4 v10, 0x0

    const/16 v12, 0xa

    if-ne v2, v12, :cond_7

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v12, v14

    const/16 v12, 0xd

    if-eq v2, v12, :cond_c

    :cond_2
    const/16 v12, 0xa

    if-eq v2, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_3
    move v8, v11

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v8, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v13, 0xa

    aput-char v13, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_5
    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x0

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x0

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    const/4 v12, 0x0

    return v12

    :cond_7
    const/16 v12, 0xd

    if-eq v2, v12, :cond_b

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v12, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v12, v14

    if-eq v2, v3, :cond_12

    const/16 v12, 0xa

    if-ne v2, v12, :cond_16

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v14, v9, v10

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-nez v7, :cond_18

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    if-nez v7, :cond_19

    const/4 v12, 0x1

    :goto_7
    return v12

    :cond_b
    if-nez v6, :cond_1

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v12, v13, :cond_e

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v12, v12, v13

    const/16 v13, 0xa

    if-eq v12, v13, :cond_f

    add-int/lit8 v10, v10, 0x1

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_3

    goto/16 :goto_2

    :cond_e
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v12, v13, :cond_d

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v12

    if-nez v12, :cond_3

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    const/4 v12, 0x1

    return v12

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v12, -0x1

    const/4 v8, 0x1

    :goto_a
    if-ge v8, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v12, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v2, :cond_14

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v13, v8

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int v13, v5, v4

    if-ne v12, v13, :cond_8

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_16
    if-nez v6, :cond_17

    :goto_b
    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v14, v9, v10

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    const/4 v12, 0x1

    return v12

    :cond_17
    const/16 v12, 0xd

    if-eq v2, v12, :cond_9

    goto :goto_b

    :cond_18
    sub-int/2addr v9, v4

    goto/16 :goto_6

    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_7
.end method

.method public scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_4

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v5

    const/4 v4, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    const/16 v6, 0xa

    if-ne v0, v6, :cond_5

    :cond_0
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    const/16 v6, 0xd

    if-eq v0, v6, :cond_c

    :cond_1
    const/16 v6, 0xa

    if-eq v0, v6, :cond_10

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_2
    move v2, v5

    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v2, v6, :cond_11

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v7, 0xa

    aput-char v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    aget-char v7, v7, v8

    int-to-char v7, v7

    const/4 v8, 0x0

    aput-char v7, v6, v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_0

    :cond_5
    const/16 v6, 0xd

    if-eq v0, v6, :cond_b

    :cond_6
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    if-eq v0, p1, :cond_12

    :cond_7
    const/16 v6, 0x25

    if-ne v0, v6, :cond_13

    :cond_8
    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v8, v3, v4

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_14

    const/4 v0, -0x1

    :cond_a
    :goto_5
    return v0

    :cond_b
    if-nez v1, :cond_0

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_e

    :goto_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v6, v6, v7

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    add-int/lit8 v4, v4, 0x1

    :cond_d
    :goto_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    goto/16 :goto_1

    :cond_e
    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_6

    :cond_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_d

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_7

    :cond_11
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    const/4 v6, -0x1

    return v6

    :cond_12
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v6, :cond_8

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_13
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isContent(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_3

    :cond_14
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    if-ne v0, p1, :cond_a

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v6, :cond_a

    const/4 v0, -0x1

    goto/16 :goto_5
.end method

.method public scanNCName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v4, v5, :cond_1

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v0

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v2, 0x0

    if-gtz v0, :cond_6

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v5, v4, :cond_4

    :cond_3
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v5, v5, v1

    int-to-char v5, v5

    aput-char v5, v4, v6

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public scanName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v4, v5, :cond_1

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v0

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v2, 0x0

    if-gtz v0, :cond_6

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v5, v4, :cond_4

    :cond_3
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v5, v5, v1

    int-to-char v5, v5

    aput-char v5, v4, v6

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public scanNmtoken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v4, v5, :cond_2

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v0

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v2, 0x0

    if-gtz v0, :cond_4

    :goto_2
    return-object v2

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public scanQName(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v13, v14, :cond_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v13, v13, v7

    invoke-static {v13}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v13

    if-nez v13, :cond_2

    :cond_0
    const/4 v13, 0x0

    return v13

    :cond_1
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v14, v13, :cond_6

    :cond_3
    const/4 v2, -0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v13, v13, v14

    invoke-static {v13}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v13, v14

    const/16 v13, 0x3a

    if-eq v1, v13, :cond_7

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v14, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v13, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v13, v13

    if-eq v4, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    invoke-static {v13, v7, v14, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    const/4 v13, -0x1

    if-ne v2, v13, :cond_9

    :goto_3
    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v13, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v14, v4

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-lez v4, :cond_0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v7, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v10

    const/4 v13, -0x1

    if-ne v2, v13, :cond_a

    move-object v5, v10

    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5, v10, v13}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v14, v14, v7

    int-to-char v14, v14

    const/4 v15, 0x0

    aput-char v14, v13, v15

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6, v6, v14}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :cond_7
    const/4 v13, -0x1

    if-ne v2, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v13, v13

    shl-int/lit8 v13, v13, 0x1

    new-array v12, v13, [C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v14, 0x0

    invoke-static {v13, v7, v12, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v12, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto/16 :goto_2

    :cond_9
    sub-int/2addr v2, v7

    goto/16 :goto_3

    :cond_a
    sub-int v9, v2, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v7, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v8

    sub-int v13, v4, v9

    add-int/lit8 v3, v13, -0x1

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v13, v13, v11

    invoke-static {v13}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v13

    if-eqz v13, :cond_b

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v11, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v14, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v15, "IllegalQName"

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-virtual/range {v13 .. v17}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5
.end method

.method public final setBufferSize(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fBufferSize:I

    return-void
.end method

.method public final setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    invoke-virtual {v1, v2, p1, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->setReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    const-string/jumbo v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "ISO-10646-UCS-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    const-string/jumbo v2, "UTF-16BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    :goto_1
    return-void

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    const-string/jumbo v2, "UTF-16BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    :goto_2
    return-void

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_1
.end method

.method public final setXMLVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object p1, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    return-void
.end method

.method public skipChar(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v1, v2, :cond_1

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v1, v2

    if-eq v0, p1, :cond_2

    if-eq p1, v5, :cond_4

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-eq p1, v5, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    :goto_1
    return v3

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_1

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v1, v2, :cond_5

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_6

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v3

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v2, v0

    int-to-char v2, v2

    aput-char v2, v1, v4

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_3
.end method

.method public final skipDeclSpaces()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v6

    :cond_0
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    :cond_2
    const/4 v1, 0x0

    if-ne v0, v8, :cond_6

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v7, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_8

    :cond_4
    :goto_1
    if-eq v0, v9, :cond_9

    :cond_5
    :goto_2
    if-eqz v1, :cond_a

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_b

    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v7

    :cond_6
    if-nez v2, :cond_7

    :goto_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_2

    :cond_7
    if-eq v0, v9, :cond_3

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v6

    invoke-virtual {p0, v7, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v3, v3, v5

    if-eq v3, v8, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_4
.end method

.method public skipSpaces()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v6

    :cond_0
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    :cond_2
    const/4 v1, 0x0

    if-ne v0, v8, :cond_6

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v7, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_8

    :cond_4
    :goto_1
    if-eq v0, v9, :cond_9

    :cond_5
    :goto_2
    if-eqz v1, :cond_a

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_b

    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v7

    :cond_6
    if-nez v2, :cond_7

    :goto_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_2

    :cond_7
    if-eq v0, v9, :cond_3

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v6

    invoke-virtual {p0, v7, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v3, v3, v5

    if-eq v3, v8, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_4
.end method

.method public skipString(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return v7

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return v7

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v4, v2

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v8
.end method
