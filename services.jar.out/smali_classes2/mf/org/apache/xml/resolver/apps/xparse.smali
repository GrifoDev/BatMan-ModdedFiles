.class public Lmf/org/apache/xml/resolver/apps/xparse;
.super Ljava/lang/Object;
.source "xparse.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xparse;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v36, 0x0

    const/4 v8, 0x0

    const/16 v19, 0xa

    const/16 v24, 0x1

    const/16 v34, 0x1

    const/16 v31, 0x0

    const/16 v30, 0x1

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_9

    aget-object v38, p0, v18

    const-string/jumbo v39, "-c"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1

    aget-object v38, p0, v18

    const-string/jumbo v39, "-w"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_2

    aget-object v38, p0, v18

    const-string/jumbo v39, "-v"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_3

    aget-object v38, p0, v18

    const-string/jumbo v39, "-n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_4

    aget-object v38, p0, v18

    const-string/jumbo v39, "-N"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5

    aget-object v38, p0, v18

    const-string/jumbo v39, "-d"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_6

    aget-object v38, p0, v18

    const-string/jumbo v39, "-E"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    aget-object v36, p0, v18

    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v18, v18, 0x1

    aget-object v38, p0, v18

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v34, 0x0

    goto :goto_1

    :cond_3
    const/16 v34, 0x1

    goto :goto_1

    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    :cond_5
    const/16 v24, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v18, v18, 0x1

    aget-object v9, p0, v18

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    sget-object v38, Lmf/org/apache/xml/resolver/apps/xparse;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v38, 0x2

    move/from16 v0, v38

    if-gt v8, v0, :cond_7

    const/16 v31, 0x0

    :goto_2
    goto :goto_1

    :cond_7
    const/16 v31, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_8
    add-int/lit8 v18, v18, 0x1

    aget-object v14, p0, v18

    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    if-ltz v13, :cond_0

    move/from16 v19, v13

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_9
    if-eqz v36, :cond_a

    :goto_3
    sput-boolean v34, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    sput-boolean v24, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    new-instance v27, Lmf/org/apache/xml/resolver/tools/ResolvingParser;

    invoke-direct/range {v27 .. v27}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v5

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v7, v0, :cond_b

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "Usage: org.apache.xml.resolver.apps.xparse [opts] xmlfile"

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v38, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    :cond_b
    new-instance v37, Lmf/org/apache/xml/resolver/apps/XParseError;

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    if-nez v34, :cond_f

    const-string/jumbo v26, "well-formed"

    :goto_5
    if-nez v24, :cond_10

    const-string/jumbo v25, "namespace-ignorant"

    :goto_6
    if-gtz v19, :cond_11

    :goto_7
    new-instance v32, Ljava/util/Date;

    invoke-direct/range {v32 .. v32}, Ljava/util/Date;-><init>()V

    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parse(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_8
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v38

    invoke-virtual/range {v32 .. v32}, Ljava/util/Date;->getTime()J

    move-result-wide v40

    sub-long v20, v38, v40

    const-wide/16 v28, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v38, 0x3e8

    cmp-long v38, v20, v38

    if-gtz v38, :cond_12

    const/16 v38, 0x1

    :goto_9
    if-nez v38, :cond_c

    const-wide/16 v38, 0x3e8

    div-long v28, v20, v38

    const-wide/16 v38, 0x3e8

    rem-long v20, v20, v38

    :cond_c
    const-wide/16 v38, 0x3c

    cmp-long v38, v28, v38

    if-gtz v38, :cond_13

    const/16 v38, 0x1

    :goto_a
    if-nez v38, :cond_d

    const-wide/16 v38, 0x3c

    div-long v22, v28, v38

    const-wide/16 v38, 0x3c

    rem-long v28, v28, v38

    :cond_d
    const-wide/16 v38, 0x3c

    cmp-long v38, v22, v38

    if-gtz v38, :cond_14

    const/16 v38, 0x1

    :goto_b
    if-nez v38, :cond_e

    const-wide/16 v38, 0x3c

    div-long v16, v22, v38

    const-wide/16 v38, 0x3c

    rem-long v22, v22, v38

    :cond_e
    if-gtz v19, :cond_15

    :goto_c
    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v38

    if-gtz v38, :cond_21

    :goto_d
    return-void

    :cond_f
    const-string/jumbo v26, "validating"

    goto :goto_5

    :cond_10
    const-string/jumbo v25, "namespace-aware"

    goto :goto_6

    :cond_11
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    const-string/jumbo v40, "Attempting "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " parse"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_2
    move-exception v33

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    const-string/jumbo v40, "SAX Exception: "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_12
    const/16 v38, 0x0

    goto/16 :goto_9

    :cond_13
    const/16 v38, 0x0

    goto/16 :goto_a

    :cond_14
    const/16 v38, 0x0

    goto :goto_b

    :cond_15
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "Parse "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v38

    if-gtz v38, :cond_19

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "succeeded "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-wide/16 v38, 0x0

    cmp-long v38, v16, v38

    if-gtz v38, :cond_1a

    const/16 v38, 0x1

    :goto_e
    if-nez v38, :cond_16

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, ":"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_16
    const-wide/16 v38, 0x0

    cmp-long v38, v16, v38

    if-lez v38, :cond_1b

    const/16 v38, 0x1

    :goto_f
    if-nez v38, :cond_17

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-gtz v38, :cond_1c

    const/16 v38, 0x1

    :goto_10
    if-nez v38, :cond_18

    :cond_17
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, ":"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_18
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "."

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, ") "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_11
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "with "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v12

    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v35

    if-gtz v12, :cond_1d

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "no errors and "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_12
    if-gtz v35, :cond_1f

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "no warnings."

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_13
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_19
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "failed "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    const/16 v38, 0x0

    goto/16 :goto_e

    :cond_1b
    const/16 v38, 0x0

    goto/16 :goto_f

    :cond_1c
    const/16 v38, 0x0

    goto/16 :goto_10

    :cond_1d
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, " error"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v38, 0x1

    move/from16 v0, v38

    if-gt v12, v0, :cond_1e

    const-string/jumbo v38, ""

    :goto_14
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, " and "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_12

    :cond_1e
    const-string/jumbo v38, "s"

    goto :goto_14

    :cond_1f
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, " warning"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v38, 0x1

    move/from16 v0, v35

    move/from16 v1, v38

    if-gt v0, v1, :cond_20

    const-string/jumbo v38, ""

    :goto_15
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v39, "."

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_20
    const-string/jumbo v38, "s"

    goto :goto_15

    :cond_21
    const/16 v38, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_d
.end method
