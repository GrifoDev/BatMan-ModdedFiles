.class final Lmf/org/apache/xerces/impl/dv/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field private static fLastModified:J

.field private static fXercesProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    sput-wide v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    sget-boolean v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v21, :cond_2

    :goto_0
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    :try_start_0
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    if-nez v19, :cond_3

    :cond_0
    :goto_1
    const/4 v10, 0x0

    if-eqz p1, :cond_5

    const/4 v11, 0x0

    :try_start_1
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v11

    new-instance v17, Ljava/util/Properties;

    invoke-direct/range {v17 .. v17}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v10

    if-nez v11, :cond_12

    :cond_1
    :goto_2
    if-nez v10, :cond_13

    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_15

    if-eqz p2, :cond_16

    sget-boolean v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v21, :cond_17

    :goto_3
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v8, v1}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v21

    return-object v21

    :cond_2
    const-string/jumbo v21, "debug is on"

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_0

    sget-boolean v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v21, :cond_4

    :goto_4
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v8, v1}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v21

    return-object v21

    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "found system property, value="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    const/16 v16, 0x0

    :try_start_3
    const-string/jumbo v21, "java.home"

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "lib"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "xerces.properties"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_a

    move-result v16

    move-object v14, v15

    :goto_5
    const-class v6, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    const-class v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    monitor-enter v21

    const/4 v13, 0x0

    const/4 v11, 0x0

    :try_start_5
    sget-wide v22, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gez v21, :cond_9

    const/16 v21, 0x1

    :goto_6
    if-nez v21, :cond_d

    if-nez v16, :cond_a

    :cond_6
    if-eqz v16, :cond_c

    :cond_7
    :goto_7
    if-nez v13, :cond_e

    :goto_8
    if-nez v11, :cond_10

    :cond_8
    :goto_9
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-eqz v21, :cond_1

    sget-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :catch_1
    move-exception v9

    :goto_a
    const-wide/16 v22, -0x1

    sput-wide v22, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    const/16 v21, 0x0

    sput-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    goto :goto_5

    :cond_9
    const/16 v21, 0x0

    goto :goto_6

    :cond_a
    :try_start_7
    sget-wide v22, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    invoke-static {v14}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v24

    sput-wide v24, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    cmp-long v21, v22, v24

    if-ltz v21, :cond_b

    const/16 v21, 0x1

    :goto_b
    if-nez v21, :cond_6

    const/4 v13, 0x1

    goto :goto_7

    :cond_b
    const/16 v21, 0x0

    goto :goto_b

    :cond_c
    const-wide/16 v22, -0x1

    sput-wide v22, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    const/16 v21, 0x0

    sput-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v20

    const/16 v21, 0x0

    :try_start_8
    sput-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v22, -0x1

    sput-wide v22, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v11, :cond_8

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :catch_3
    move-exception v3

    goto :goto_9

    :cond_d
    if-eqz v16, :cond_7

    const/4 v13, 0x1

    :try_start_a
    invoke-static {v14}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v22

    sput-wide v22, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v2

    if-nez v11, :cond_f

    :goto_c
    :try_start_b
    throw v2

    :catchall_1
    move-exception v21

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v21

    :cond_e
    :try_start_c
    new-instance v21, Ljava/util/Properties;

    invoke-direct/range {v21 .. v21}, Ljava/util/Properties;-><init>()V

    sput-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-static {v14}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v11

    sget-object v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :cond_f
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_c

    :catch_4
    move-exception v21

    goto :goto_c

    :cond_10
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_9

    :catch_5
    move-exception v21

    goto :goto_9

    :catch_6
    move-exception v5

    if-eqz v11, :cond_1

    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v7

    goto/16 :goto_2

    :catchall_2
    move-exception v6

    if-nez v11, :cond_11

    :goto_d
    throw v6

    :cond_11
    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_d

    :catch_8
    move-exception v21

    goto :goto_d

    :cond_12
    :try_start_11
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v21

    goto/16 :goto_2

    :cond_13
    sget-boolean v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v21, :cond_14

    :goto_e
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v10, v8, v0}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v21

    return-object v21

    :cond_14
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "found in "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    return-object v18

    :cond_16
    new-instance v21, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "Provider for "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " cannot be found"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21

    :cond_17
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "using fallback, value="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_a
    move-exception v9

    move-object v14, v15

    goto/16 :goto_a
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "XERCES: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    :goto_0
    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v4, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v3

    :goto_1
    if-eq v2, v0, :cond_1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/16 v13, 0x50

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "META-INF/services/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v7}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    sget-boolean v9, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v9, :cond_4

    :goto_1
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x50

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    if-nez v4, :cond_5

    :cond_1
    return-object v11

    :cond_2
    const-class v9, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v1, v2, :cond_0

    move-object v1, v2

    invoke-static {v2, v7}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    :cond_3
    return-object v11

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "found jar resource="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " using ClassLoader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    return-object v11

    :catch_2
    move-exception v9

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    throw v0

    :catch_3
    move-exception v9

    goto :goto_5

    :catch_4
    move-exception v9

    goto :goto_3

    :cond_5
    const-string/jumbo v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-boolean v9, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-nez v9, :cond_6

    :goto_6
    invoke-static {v4, v1, v12}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "found in resource, value="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    const-string/jumbo v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    move-object v2, p0

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v5

    if-nez p2, :cond_3

    throw v5

    :cond_3
    const-class v6, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ne p1, v0, :cond_5

    throw v5

    :cond_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object p1, v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1
.end method

.method private static isDebugEnabled()Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v2, "xerces.debug"

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v3
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sget-boolean v4, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

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

    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;

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

    invoke-direct {v4, v5, v2}, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;

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

    invoke-direct {v4, v5, v3}, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
