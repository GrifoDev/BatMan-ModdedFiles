.class public final Lmf/org/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/16 v2, 0x800

    invoke-direct {p0, p1, v2, v0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method private expectedByte(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ExpectedByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidByte(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidSurrogate(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidHighSurrogate"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "mark()"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "OperationNotSupported"

    invoke-interface {v1, v2, v4, v3}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    const/4 v11, -0x1

    iput v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    :goto_0
    return v4

    :cond_0
    const/4 v6, 0x0

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eqz v11, :cond_2

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v12, 0x0

    const/4 v6, 0x1

    aget-byte v11, v11, v12

    and-int/lit16 v0, v11, 0xff

    :goto_1
    const/4 v11, -0x1

    if-eq v0, v11, :cond_3

    const/16 v11, 0x80

    if-lt v0, v11, :cond_4

    and-int/lit16 v11, v0, 0xe0

    const/16 v12, 0xc0

    if-eq v11, v12, :cond_5

    :cond_1
    and-int/lit16 v11, v0, 0xf0

    const/16 v12, 0xe0

    if-eq v11, v12, :cond_9

    and-int/lit16 v11, v0, 0xf8

    const/16 v12, 0xf0

    if-eq v11, v12, :cond_14

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v11, -0x1

    return v11

    :cond_4
    int-to-char v4, v0

    goto :goto_0

    :cond_5
    and-int/lit8 v11, v0, 0x1e

    if-eqz v11, :cond_1

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v6, v11, :cond_6

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v1, v11, 0xff

    move v6, v7

    :goto_2
    const/4 v11, -0x1

    if-eq v1, v11, :cond_7

    :goto_3
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_8

    :goto_4
    shl-int/lit8 v11, v0, 0x6

    and-int/lit16 v11, v11, 0x7c0

    and-int/lit8 v12, v1, 0x3f

    or-int v4, v11, v12

    goto :goto_0

    :cond_6
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_3

    :cond_8
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_4

    :cond_9
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v6, v11, :cond_c

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v1, v11, 0xff

    move v6, v7

    :goto_5
    const/4 v11, -0x1

    if-eq v1, v11, :cond_d

    :goto_6
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_e

    :cond_a
    :goto_7
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_b
    :goto_8
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v6, v11, :cond_11

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v2, v11, 0xff

    move v6, v7

    :goto_9
    const/4 v11, -0x1

    if-eq v2, v11, :cond_12

    :goto_a
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_13

    :goto_b
    shl-int/lit8 v11, v0, 0xc

    const v12, 0xf000

    and-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x6

    and-int/lit16 v12, v12, 0xfc0

    or-int/2addr v11, v12

    and-int/lit8 v12, v2, 0x3f

    or-int v4, v11, v12

    goto/16 :goto_0

    :cond_c
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_5

    :cond_d
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_6

    :cond_e
    const/16 v11, 0xed

    if-eq v0, v11, :cond_10

    :cond_f
    and-int/lit8 v11, v0, 0xf

    if-nez v11, :cond_b

    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_a

    goto :goto_8

    :cond_10
    const/16 v11, 0xa0

    if-lt v1, v11, :cond_f

    goto :goto_7

    :cond_11
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_9

    :cond_12
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_a

    :cond_13
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_b

    :cond_14
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v6, v11, :cond_17

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v1, v11, 0xff

    move v6, v7

    :goto_c
    const/4 v11, -0x1

    if-eq v1, v11, :cond_18

    :goto_d
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_19

    :cond_15
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_16
    :goto_e
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v6, v11, :cond_1a

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v2, v11, 0xff

    move v6, v7

    :goto_f
    const/4 v11, -0x1

    if-eq v2, v11, :cond_1b

    :goto_10
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_1c

    :goto_11
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v6, v11, :cond_1d

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v3, v11, 0xff

    move v6, v7

    :goto_12
    const/4 v11, -0x1

    if-eq v3, v11, :cond_1e

    :goto_13
    and-int/lit16 v11, v3, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_1f

    :goto_14
    shl-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x1c

    shr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v9, v11, v12

    const/16 v11, 0x10

    if-gt v9, v11, :cond_20

    :goto_15
    add-int/lit8 v10, v9, -0x1

    shl-int/lit8 v11, v10, 0x6

    and-int/lit16 v11, v11, 0x3c0

    const v12, 0xd800

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    shr-int/lit8 v12, v2, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v5, v11, v12

    shl-int/lit8 v11, v2, 0x6

    and-int/lit16 v11, v11, 0x3c0

    const v12, 0xdc00

    or-int/2addr v11, v12

    and-int/lit8 v12, v3, 0x3f

    or-int v8, v11, v12

    move v4, v5

    iput v8, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_0

    :cond_17
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_c

    :cond_18
    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_d

    :cond_19
    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_16

    and-int/lit8 v11, v0, 0x7

    if-eqz v11, :cond_15

    goto :goto_e

    :cond_1a
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_f

    :cond_1b
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_10

    :cond_1c
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_11

    :cond_1d
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_12

    :cond_1e
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_13

    :cond_1f
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_14

    :cond_20
    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    goto :goto_15
.end method

.method public read([CII)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v15, p2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    :goto_0
    move/from16 v17, v11

    const/4 v8, 0x0

    const/4 v13, 0x0

    move/from16 v16, v15

    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v9, v23, v13

    if-gez v9, :cond_6

    :cond_0
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v9, v23, v13

    if-gez v9, :cond_7

    and-int/lit16 v4, v9, 0xff

    and-int/lit16 v0, v4, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    :cond_1
    and-int/lit16 v0, v4, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    and-int/lit16 v0, v4, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_31

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move/from16 v15, v16

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, p3

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_5

    sub-int v23, v15, p2

    add-int v11, v11, v23

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 p3, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v15, p2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, p2

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_5
    const/16 v23, -0x1

    return v23

    :cond_6
    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v16

    goto/16 :goto_3

    :cond_8
    and-int/lit8 v23, v4, 0x1e

    if-eqz v23, :cond_1

    const/4 v5, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_a

    :goto_6
    add-int/lit8 v11, v11, 0x1

    :goto_7
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    :goto_8
    shl-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x7c0

    move/from16 v23, v0

    and-int/lit8 v24, v5, 0x3f

    or-int v10, v23, v24

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    goto :goto_7

    :cond_a
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_b

    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_c
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_d

    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_e
    const/4 v5, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_12

    :goto_9
    add-int/lit8 v11, v11, 0x1

    :goto_a
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    :cond_f
    :goto_b
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_17

    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_10
    :goto_c
    const/4 v6, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v6, v0, :cond_19

    :goto_d
    add-int/lit8 v11, v11, 0x1

    :goto_e
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    :goto_f
    shl-int/lit8 v23, v4, 0xc

    const v24, 0xf000

    and-int v23, v23, v24

    shl-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfc0

    move/from16 v24, v0

    or-int v23, v23, v24

    and-int/lit8 v24, v6, 0x3f

    or-int v10, v23, v24

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v11, v11, -0x2

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    goto :goto_a

    :cond_12
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_13

    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_14
    const/16 v23, 0xed

    move/from16 v0, v23

    if-eq v4, v0, :cond_16

    :cond_15
    and-int/lit8 v23, v4, 0xf

    if-nez v23, :cond_10

    and-int/lit8 v23, v5, 0x20

    if-eqz v23, :cond_f

    goto/16 :goto_c

    :cond_16
    const/16 v23, 0xa0

    move/from16 v0, v23

    if-lt v5, v0, :cond_15

    goto/16 :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    goto/16 :goto_e

    :cond_19
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_1a

    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_1b
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_1c

    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_f

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    aput-byte v24, v23, v25

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_1d
    const/4 v5, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_21

    :goto_10
    add-int/lit8 v11, v11, 0x1

    :goto_11
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_23

    :cond_1e
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_24

    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_1f
    :goto_12
    const/4 v6, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v6, v0, :cond_26

    :goto_13
    add-int/lit8 v11, v11, 0x1

    :goto_14
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    :goto_15
    const/4 v7, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_2b

    :goto_16
    add-int/lit8 v11, v11, 0x1

    :goto_17
    and-int/lit16 v0, v7, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    :goto_18
    shl-int/lit8 v23, v4, 0x2

    and-int/lit8 v23, v23, 0x1c

    shr-int/lit8 v24, v5, 0x4

    and-int/lit8 v24, v24, 0x3

    or-int v18, v23, v24

    const/16 v23, 0x10

    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_2f

    :goto_19
    add-int/lit8 v19, v18, -0x1

    and-int/lit8 v22, v5, 0xf

    and-int/lit8 v21, v6, 0x3f

    and-int/lit8 v20, v7, 0x3f

    shl-int/lit8 v23, v19, 0x6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v23, v0

    const v24, 0xd800

    or-int v23, v23, v24

    shl-int/lit8 v24, v22, 0x2

    or-int v23, v23, v24

    shr-int/lit8 v24, v21, 0x4

    or-int v12, v23, v24

    shl-int/lit8 v23, v21, 0x6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v23, v0

    const v24, 0xdc00

    or-int v23, v23, v24

    or-int v14, v23, v20

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, p3

    if-le v11, v0, :cond_30

    move-object/from16 v0, p0

    iput v14, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    goto/16 :goto_11

    :cond_21
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_22

    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_10

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_23
    and-int/lit8 v23, v5, 0x30

    if-nez v23, :cond_1f

    and-int/lit8 v23, v4, 0x7

    if-eqz v23, :cond_1e

    goto/16 :goto_12

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    goto/16 :goto_14

    :cond_26
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_27

    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_13

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_28
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_29

    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_15

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    aput-byte v24, v23, v25

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v7, v0, 0xff

    goto/16 :goto_17

    :cond_2b
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_2c

    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_16

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    aput-byte v24, v23, v25

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_2d
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_2e

    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_18

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    aput-byte v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    aput-byte v24, v23, v25

    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_2f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    goto/16 :goto_19

    :cond_30
    add-int/lit8 v16, v15, 0x1

    int-to-char v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v15

    move/from16 v15, v16

    goto/16 :goto_3

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    int-to-byte v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v24, v23, v25

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    return v23

    :cond_32
    return v11
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    return-void
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-wide v4, p1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v3, v3

    new-array v0, v3, [C

    :cond_0
    array-length v3, v0

    int-to-long v10, v3

    cmp-long v3, v10, v4

    if-ltz v3, :cond_1

    move v3, v8

    :goto_0
    if-nez v3, :cond_2

    array-length v2, v0

    :goto_1
    invoke-virtual {p0, v0, v9, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_3

    :goto_2
    sub-long v6, p1, v4

    return-wide v6

    :cond_1
    move v3, v9

    goto :goto_0

    :cond_2
    long-to-int v2, v4

    goto :goto_1

    :cond_3
    int-to-long v10, v1

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_4

    move v3, v8

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :cond_4
    move v3, v9

    goto :goto_3
.end method
