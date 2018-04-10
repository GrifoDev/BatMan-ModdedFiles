.class public Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XML11DocumentScannerImpl.java"


# instance fields
.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method


# virtual methods
.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "VersionNotSupported11"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

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

.method protected scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_2

    :cond_0
    :goto_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    const/4 v5, 0x0

    if-eq v0, v6, :cond_3

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V

    if-ne v0, v6, :cond_5

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    if-ne v2, v6, :cond_22

    :goto_2
    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v9, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v7, v8, v9}, Lmf/org/apache/xerces/xni/XMLString;->equals([CII)Z

    move-result v7

    return v7

    :cond_2
    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    const-string/jumbo v8, "OpenQuoteExpected"

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    if-ne v2, v6, :cond_4

    :goto_3
    const/4 v7, 0x1

    return v7

    :cond_4
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    const-string/jumbo v8, "CloseQuoteExpected"

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    const/16 v7, 0x26

    if-eq v0, v7, :cond_9

    const/16 v7, 0x3c

    if-eq v0, v7, :cond_1a

    const/16 v7, 0x25

    if-ne v0, v7, :cond_1b

    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v7, :cond_1d

    :cond_8
    :goto_4
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v7, :cond_21

    :goto_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    if-ne v0, v6, :cond_6

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v7, :cond_b

    :goto_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v7, :cond_f

    :goto_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_10

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v7, :cond_11

    :goto_8
    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-eq v4, v7, :cond_12

    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-eq v4, v7, :cond_13

    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-eq v4, v7, :cond_14

    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-eq v4, v7, :cond_15

    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-eq v4, v7, :cond_16

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isExternalEntity(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_a
    :goto_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_6

    :cond_c
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v7, :cond_d

    :goto_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v1

    const/4 v7, -0x1

    goto/16 :goto_4

    :cond_d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_a

    :cond_e
    const-string/jumbo v7, "NameRequiredInReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const-string/jumbo v7, "SemicolonRequiredInReference"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    :cond_12
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_13
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_16
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v7, "ReferenceToExternalEntity"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_18
    if-nez p4, :cond_19

    const-string/jumbo v7, "EntityNotDeclared"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_19
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fValidation:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v9, "EntityNotDeclared"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :cond_1a
    const-string/jumbo v7, "LessthanInAttValue"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_1b
    const/16 v7, 0x5d

    if-eq v0, v7, :cond_7

    const/16 v7, 0xa

    if-ne v0, v7, :cond_1e

    :cond_1c
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_1d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_1e
    const/16 v7, 0xd

    if-eq v0, v7, :cond_1c

    const/16 v7, 0x85

    if-eq v0, v7, :cond_1c

    const/16 v7, 0x2028

    if-eq v0, v7, :cond_1c

    const/4 v7, -0x1

    if-ne v0, v7, :cond_20

    :cond_1f
    const/4 v7, -0x1

    if-eq v0, v7, :cond_8

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "InvalidCharInAttValue"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_20
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_4

    :cond_21
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_5

    :cond_22
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    const-string/jumbo v8, "CloseQuoteExpected"

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected scanContent()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0x5d

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanContent(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v2, :cond_4

    :cond_1
    :goto_1
    if-eq v0, v5, :cond_5

    :cond_2
    :goto_2
    return v0

    :cond_3
    const/16 v2, 0x85

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2028

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_4
    iget v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v1, v6}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget v2, v2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v2, :cond_a

    :cond_7
    :goto_4
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    const/4 v0, -0x1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "CDEndInContent"

    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v2, v3, v6}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_4
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

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_3

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    const/4 v3, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    if-ne v0, v8, :cond_4

    :cond_2
    if-nez v3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    const-string/jumbo v4, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v4, v9}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

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

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    return v1

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "PublicIDUnterminated"

    invoke-virtual {p0, v4, v9}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

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
