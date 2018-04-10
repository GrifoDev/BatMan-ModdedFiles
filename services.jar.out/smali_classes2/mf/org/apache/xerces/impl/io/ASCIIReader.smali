.class public final Lmf/org/apache/xerces/impl/io/ASCIIReader;
.super Ljava/io/Reader;
.source "ASCIIReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v0, 0x80

    if-ge v6, v0, :cond_0

    return v6

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const-string/jumbo v4, "InvalidASCII"

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public read([CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    invoke-virtual {v0, v1, v9, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    aget-byte v6, v0, v8

    if-ltz v6, :cond_1

    add-int v0, p2, v8

    int-to-char v1, v6

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length p3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    and-int/lit16 v4, v6, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v9

    const-string/jumbo v4, "InvalidASCII"

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    return v7
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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
