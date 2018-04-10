.class public Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.source "XML11DTDScannerImpl.java"


# instance fields
.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method


# virtual methods
.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "VersionNotSupported11"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isInvalidLiteral(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 5

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int v3, v2, v3

    return v3

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method protected isValidNCName(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameChar(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartChar(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartHighSurrogate(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v0

    return v0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 5

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V
    .locals 5

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int v2, v3, p2

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected scanPubidLiteral(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v8, 0x20

    const/4 v7, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_3

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    const/4 v3, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    if-ne v0, v8, :cond_4

    :cond_2
    if-nez v3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    const-string/jumbo v4, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v4, v9}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_4
    const/16 v4, 0xa

    if-eq v0, v4, :cond_2

    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/16 v4, 0x85

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2028

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_5

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    const/4 v1, 0x0

    const-string/jumbo v4, "InvalidCharInPublicID"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    return v1

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "PublicIDUnterminated"

    invoke-virtual {p0, v4, v9}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method
