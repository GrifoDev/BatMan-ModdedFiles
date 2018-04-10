.class public Lmf/org/apache/xml/serialize/Encodings;
.super Ljava/lang/Object;
.source "Encodings.java"


# static fields
.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field static final DEFAULT_LAST_PRINTABLE:I = 0x7f

.field static final JIS_DANGER_CHARS:Ljava/lang/String; = "\\~\u007f\u00a2\u00a3\u00a5\u00ac\u2014\u2015\u2016\u2026\u203e\u203e\u2225\u222f\u301c\uff3c\uff5e\uffe0\uffe1\uffe2\uffe3"

.field static final LAST_PRINTABLE_UNICODE:I = 0xffff

.field static final UNICODE_ENCODINGS:[Ljava/lang/String;

.field static _encodings:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Unicode"

    aput-object v2, v0, v1

    const-string/jumbo v1, "UnicodeBig"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "UnicodeLittle"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "GB2312"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "UTF8"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "UTF-16"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEncodingInfo(Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/EncodingInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v4, 0x7f

    const v5, 0xffff

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    const-string/jumbo v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    const-string/jumbo v3, "UTF8"

    invoke-static {v3}, Lmf/org/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF8"

    invoke-direct {v0, v3, v4, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    const-string/jumbo v4, "UTF8"

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {p0}, Lmf/org/apache/xml/serialize/EncodingInfo;->testJavaEncodingName(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    if-nez v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-static {p0}, Lmf/org/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_7

    :goto_2
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v3, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-static {p0}, Lmf/org/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v4}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_8
    return-object v0

    :cond_9
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-direct {v0, p0, v2, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_b

    :goto_3
    sget-object v3, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_b
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-direct {v0, p0, v2, v4}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3
.end method
