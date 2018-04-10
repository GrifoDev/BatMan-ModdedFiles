.class public Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;
.super Ljava/lang/Object;


# static fields
.field static _TOXML:Z

.field static counter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->_TOXML:Z

    const/4 v0, 0x0

    sput v0, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static changeLess32toRFC(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0x61

    const/16 v12, 0x46

    const/16 v11, 0x41

    const/16 v10, 0x39

    const/16 v9, 0x30

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v7, -0x1

    if-gt v2, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_0
    int-to-char v3, v2

    const/16 v7, 0x5c

    if-eq v3, v7, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v7

    int-to-char v4, v7

    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v7

    int-to-char v5, v7

    if-ge v4, v9, :cond_5

    :cond_2
    if-ge v4, v11, :cond_9

    :cond_3
    if-ge v4, v13, :cond_a

    :cond_4
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    if-gt v4, v10, :cond_2

    :cond_6
    :goto_2
    if-ge v5, v9, :cond_b

    :cond_7
    if-ge v5, v11, :cond_c

    :cond_8
    if-lt v5, v13, :cond_4

    const/16 v7, 0x66

    if-gt v5, v7, :cond_4

    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    int-to-char v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_9
    if-gt v4, v12, :cond_3

    goto :goto_2

    :cond_a
    const/16 v7, 0x66

    if-le v4, v7, :cond_6

    goto :goto_1

    :cond_b
    if-gt v5, v10, :cond_7

    goto :goto_3

    :cond_c
    if-gt v5, v12, :cond_8

    goto :goto_3
.end method

.method static changeLess32toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static changeWStoRFC(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v4, "\\20"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\\ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v3, v2, 0x3

    goto :goto_0
.end method

.method static changeWStoXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x5c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v6, -0x1

    if-gt v2, v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    int-to-char v3, v2

    if-eq v3, v7, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v6

    int-to-char v4, v6

    const/16 v6, 0x20

    if-eq v4, v6, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "20"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static countQuotes(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v8, 0xc48d

    const v7, 0xc487

    const/16 v6, 0x75

    const/16 v5, 0x69

    const/16 v4, 0x4c

    const-string/jumbo v2, "CN=\"Steve, Kille\",  O=Isode Limited, C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=Steve Kille    ,   O=Isode Limited,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "\\ OU=Sales+CN=J. Smith,O=Widget Inc.,C=US\\ \\ "

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=L. Eagle,O=Sue\\, Grabbit and Runn,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=Before\\0DAfter,O=Test,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=\"L. Eagle,O=Sue, = + < > # ;Grabbit and Runn\",C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "1.3.6.1.4.1.1466.0=#04024869,O=Test,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "SN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToXML(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=\"Steve, Kille\",  O=Isode Limited, C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=Steve Kille    ,   O=Isode Limited,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    const-string/jumbo v2, "\\20OU=Sales+CN=J. Smith,O=Widget Inc.,C=US\\20\\20 "

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=L. Eagle,O=Sue\\, Grabbit and Runn,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=Before\\12After,O=Test,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    const-string/jumbo v2, "CN=\"L. Eagle,O=Sue, = + < > # ;Grabbit and Runn\",C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    const-string/jumbo v2, "1.3.6.1.4.1.1466.0=\\#04024869,O=Test,C=GB"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "SN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->testToRFC(Ljava/lang/String;)V

    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v6, ""

    return-object v6

    :cond_1
    const-string/jumbo v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->semicolonToComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->parseRDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    invoke-static {v0, v5, v4}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->countQuotes(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v3, v6

    if-gtz v4, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_3

    rem-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->parseRDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v4, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    return-object p0
.end method

.method static normalizeAT(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static normalizeV(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x5c

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    sget-boolean v5, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->_TOXML:Z

    if-eq v5, v6, :cond_5

    const-string/jumbo v5, "\\#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v3

    const/4 v5, -0x1

    if-gt v3, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    int-to-char v4, v3

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const/16 v5, 0x3d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_5
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    goto :goto_1

    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static parseATAV(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-gtz v0, :cond_2

    :goto_0
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->normalizeAT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->normalizeV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_0

    goto :goto_0
.end method

.method static parseRDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string/jumbo v5, "+"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->parseATAV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-static {p0, v4, v3}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->countQuotes(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v2, v5

    if-gtz v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    rem-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->parseATAV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    const/4 v2, 0x0

    goto :goto_1
.end method

.method static removeWSandReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-static {p0, v4, v3}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->countQuotes(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v2, v5

    if-gtz v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    rem-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    const/4 v2, 0x0

    goto :goto_1
.end method

.method static removeWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->removeWSandReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rfc2253toXMLdsig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->_TOXML:Z

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->rfctoXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static rfctoXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->changeLess32toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->changeWStoXML(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object p0
.end method

.method static semicolonToComma(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ";"

    const-string/jumbo v1, ","

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->removeWSandReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static testToRFC(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->counter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "         "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->xmldsigtoRFC2253(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static testToXML(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->counter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "         "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->rfc2253toXMLdsig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static xmldsigtoRFC2253(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->_TOXML:Z

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->xmltoRFC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static xmltoRFC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->changeLess32toRFC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->changeWStoRFC(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object p0
.end method
