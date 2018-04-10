.class Lmf/javax/xml/stream/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/stream/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sput-boolean v2, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    new-instance v4, Lmf/javax/xml/stream/SecuritySupport;

    invoke-direct {v4}, Lmf/javax/xml/stream/SecuritySupport;-><init>()V

    sput-object v4, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    :try_start_0
    sget-object v4, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    const-string/jumbo v5, "jaxp.debug"

    invoke-virtual {v4, v5}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    move v2, v3

    :cond_0
    sput-boolean v2, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "find factoryId ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    :try_start_0
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8, p0}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-nez v7, :cond_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_1
    sget-boolean v8, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    if-nez v8, :cond_3

    :goto_1
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v8, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    if-nez v4, :cond_7

    :cond_1
    :goto_2
    invoke-static {p0}, Lmf/javax/xml/stream/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    if-eqz p2, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "loaded from fallback value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    invoke-static {p2, p1, v12}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found system property, value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v6

    sget-boolean v8, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_3
    sget-object v0, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    sget-boolean v8, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    if-nez v8, :cond_5

    :cond_4
    :goto_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    sget-boolean v8, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "stax.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    sput-boolean v8, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8, v3}, Lmf/javax/xml/stream/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "jaxp.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8, v3}, Lmf/javax/xml/stream/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Read properties file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v9, v3}, Lmf/javax/xml/stream/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto/16 :goto_3

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Read properties file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v9, v3}, Lmf/javax/xml/stream/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :cond_7
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v8, v9}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v8

    return-object v8

    :cond_8
    return-object v5

    :cond_9
    new-instance v8, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Provider for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cannot be found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "META-INF/services/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7}, Lmf/javax/xml/stream/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    const-class v7, Lmf/javax/xml/stream/FactoryFinder;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7, v0, v5}, Lmf/javax/xml/stream/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    sget-boolean v7, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-nez v7, :cond_4

    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_5

    :cond_1
    return-object v9

    :cond_2
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7, v0, v5}, Lmf/javax/xml/stream/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    const-class v7, Lmf/javax/xml/stream/FactoryFinder;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7, v0, v5}, Lmf/javax/xml/stream/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    :cond_3
    return-object v9

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found jar resource="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " using ClassLoader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_2

    :catch_1
    move-exception v6

    return-object v9

    :cond_5
    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in resource, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    invoke-static {v2, v0, v10}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/stream/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-nez p2, :cond_2

    throw v0

    :cond_2
    const-class v1, Lmf/javax/xml/stream/FactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/javax/xml/stream/FactoryFinder;->getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sget-boolean v4, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-nez v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "created new instance of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " using ClassLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Provider "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Provider "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
