.class Lmf/javax/xml/validation/SchemaFactoryFinder;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;
    }
.end annotation


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static volatile firstTime:Z

.field private static ss:Lmf/javax/xml/validation/SecuritySupport;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    new-instance v3, Lmf/javax/xml/validation/SecuritySupport;

    invoke-direct {v3}, Lmf/javax/xml/validation/SecuritySupport;-><init>()V

    sput-object v3, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lmf/javax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    sput-boolean v1, Lmf/javax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    :try_start_0
    sget-object v3, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    const-string/jumbo v4, "jaxp.debug"

    invoke-virtual {v3, v4}, Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v1, Lmf/javax/xml/validation/SchemaFactory;

    sput-object v1, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "META-INF/services/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-boolean v0, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugDisplayClassLoader()V

    goto :goto_0
.end method

.method private _newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 19

    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Looking up system property \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-object v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    const-string/jumbo v17, "The property is undefined."

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    const-string/jumbo v18, "java.home"

    invoke-virtual/range {v17 .. v18}, Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "lib"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "jaxp.properties"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    :try_start_1
    sget-boolean v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    if-nez v17, :cond_4

    :goto_1
    sget-object v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "found "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " in $java.home/jaxp.properties"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_7

    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URL;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "looking into "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v13}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lmf/javax/xml/validation/SecuritySupport;->getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/validation/SchemaFactoryFinder;->loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/validation/SchemaFactory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    if-eqz v14, :cond_2

    return-object v14

    :cond_3
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "The value is \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    if-eqz v14, :cond_0

    return-object v14

    :catch_0
    move-exception v16

    sget-boolean v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "failed to look up system property \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    sget-object v4, Lmf/javax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    sget-boolean v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    if-nez v17, :cond_6

    :cond_5
    :goto_4
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v17

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v7

    sget-boolean v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v17, :cond_1

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    :try_start_7
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    sput-boolean v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    sget-object v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lmf/javax/xml/validation/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Read properties file "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-object v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v18, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lmf/javax/xml/validation/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :cond_7
    const/16 v17, 0x1

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v14

    if-eqz v14, :cond_1

    return-object v14

    :catch_2
    move-exception v6

    sget-boolean v17, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v17, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "failed to read "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v17, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string/jumbo v17, "all things were tried, but none was found. bailing out."

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const/16 v17, 0x0

    return-object v17

    :cond_9
    const-string/jumbo v17, "attempting to use the platform default XML Schema validator"

    invoke-static/range {v17 .. v17}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const-string/jumbo v17, "com.sun.org.apache.xerces.internal.jaxp.validation.XMLSchemaFactory"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v17

    return-object v17
.end method

.method static synthetic access$0()Lmf/javax/xml/validation/SecuritySupport;
    .locals 1

    sget-object v0, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method private createClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private createServiceFileIterator()Ljava/util/Iterator;
    .locals 5

    iget-object v2, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    iget-object v3, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v4, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmf/javax/xml/validation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    new-instance v2, Lmf/javax/xml/validation/SchemaFactoryFinder$2;

    invoke-direct {v2, p0, v1}, Lmf/javax/xml/validation/SchemaFactoryFinder$2;-><init>(Lmf/javax/xml/validation/SchemaFactoryFinder;Ljava/util/Enumeration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    new-instance v2, Lmf/javax/xml/validation/SchemaFactoryFinder$1;

    invoke-direct {v2, p0}, Lmf/javax/xml/validation/SchemaFactoryFinder$1;-><init>(Lmf/javax/xml/validation/SchemaFactoryFinder;)V

    return-object v2

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "no "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " file was found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to enumerate resources "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-nez v2, :cond_2

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private debugDisplayClassLoader()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using thread context class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using system class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

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

.method private loadFromProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, p3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " is not in the property file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v2

    return-object v2
.end method

.method private loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Class;

    const-string/jumbo v15, ""

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v12, v15

    const-string/jumbo v9, "isSchemaLanguageSupported"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Reading "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string/jumbo v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_1
    :pswitch_0
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/javax/xml/validation/SchemaFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string/jumbo v15, "isSchemaLanguageSupported"

    invoke-virtual {v3, v15, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v15

    if-nez v15, :cond_1

    :goto_2
    const/4 v11, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v10, ""

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v11, 0x0

    goto :goto_0

    :catch_1
    move-exception v7

    const/4 v11, 0x0

    goto :goto_0

    :catch_2
    move-exception v6

    const/4 v11, 0x0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const-string/jumbo v4, "newXMLSchemaFactoryNoServiceLoader"

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    :cond_0
    return-object v5

    :catch_0
    move-exception v2

    return-object v5

    :catch_1
    move-exception v1

    return-object v5
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    :goto_0
    sget-object v2, Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v2, p1, v0}, Lmf/javax/xml/validation/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v5

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v0

    return-object v0
.end method

.method createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "createInstance("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "loaded "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :goto_0
    if-eqz v5, :cond_2

    :goto_1
    return-object v5

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "failed to getClass("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-object v8

    :cond_1
    :try_start_0
    invoke-static {v2}, Lmf/javax/xml/validation/SchemaFactoryFinder;->newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/javax/xml/validation/SchemaFactory;

    move-object v5, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/javax/xml/validation/SchemaFactory;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "could not instantiate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean v6, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-nez v6, :cond_3

    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "could not instantiate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean v6, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-nez v6, :cond_4

    :goto_3
    return-object v8

    :cond_4
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "could not instantiate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean v6, Lmf/javax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-nez v6, :cond_5

    :goto_4
    return-object v8

    :cond_5
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_4
.end method

.method public newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->_newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to find a factory for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "factory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method
