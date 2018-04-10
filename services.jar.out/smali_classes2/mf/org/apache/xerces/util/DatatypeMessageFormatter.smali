.class public Lmf/org/apache/xerces/util/DatatypeMessageFormatter;
.super Ljava/lang/Object;
.source "DatatypeMessageFormatter.java"


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "mf.org.apache.xerces.impl.msg.DatatypeMessages"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    if-eqz p0, :cond_1

    :goto_0
    const-string/jumbo v6, "mf.org.apache.xerces.impl.msg.DatatypeMessages"

    invoke-static {v6, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez p2, :cond_2

    :goto_1
    if-eqz v3, :cond_3

    :cond_0
    return-object v3

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

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

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v6, "BadMessageKey"

    invoke-virtual {v4, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/MissingResourceException;

    invoke-direct {v6, p1, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_3
    move-object v3, p1

    array-length v6, p2

    if-lez v6, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_2
    array-length v6, p2

    if-ge v2, v6, :cond_0

    if-gtz v2, :cond_4

    :goto_3
    aget-object v6, p2, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
