.class public Lmf/org/apache/xerces/dom/DOMMessageFormatter;
.super Ljava/lang/Object;
.source "DOMMessageFormatter.java"


# static fields
.field public static final DOM_DOMAIN:Ljava/lang/String; = "http://www.w3.org/dom/DOMTR"

.field public static final SERIALIZER_DOMAIN:Ljava/lang/String; = "http://apache.org/xml/serializer"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"

.field private static domResourceBundle:Ljava/util/ResourceBundle;

.field private static locale:Ljava/util/Locale;

.field private static serResourceBundle:Ljava/util/ResourceBundle;

.field private static xmlResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez p2, :cond_3

    :goto_0
    if-eqz v3, :cond_4

    :cond_1
    return-object v3

    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->init()V

    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v6, Ljava/util/MissingResourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unknown domain"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_3
    :try_start_1
    invoke-static {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v6, "FormatFailed"

    invoke-virtual {v4, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "BadMessageKey"

    invoke-virtual {v4, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/MissingResourceException;

    invoke-direct {v6, p1, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_4
    move-object v3, p1

    array-length v6, p2

    if-lez v6, :cond_1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_1
    array-length v6, p2

    if-ge v2, v6, :cond_1

    if-gtz v2, :cond_5

    :goto_2
    aget-object v6, p2, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method static getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    return-object v0

    :cond_1
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-ne p0, v0, :cond_3

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    return-object v0

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/serializer"

    if-ne p0, v0, :cond_5

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    return-object v0

    :cond_5
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0
.end method

.method public static init()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v1, "mf.org.apache.xerces.impl.msg.DOMMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "mf.org.apache.xerces.impl.msg.XMLSerializerMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public static setLocale(Ljava/util/Locale;)V
    .locals 0

    sput-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method
