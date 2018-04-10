.class public Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
.super Ljava/lang/Object;
.source "XMLMessageFormatter.java"

# interfaces
.implements Lmf/org/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XMLNS_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xml-names-19990114"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    if-eqz p1, :cond_1

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    if-ne p1, v5, :cond_2

    :goto_1
    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v5, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez p3, :cond_3

    :goto_2
    if-eqz v3, :cond_4

    :cond_0
    return-object v3

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v5, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {v3, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v6, "FormatFailed"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v6, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_2

    :catch_1
    move-exception v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v6, "BadMessageKey"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/MissingResourceException;

    invoke-direct {v5, p2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_4
    move-object v3, p2

    array-length v5, p3

    if-lez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_3
    array-length v5, p3

    if-ge v2, v5, :cond_0

    if-gtz v2, :cond_5

    :goto_4
    aget-object v5, p3, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
