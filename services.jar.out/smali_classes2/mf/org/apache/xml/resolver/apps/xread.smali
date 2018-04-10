.class public Lmf/org/apache/xml/resolver/apps/xread;
.super Ljava/lang/Object;
.source "xread.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v37, 0x0

    const/4 v8, 0x0

    const/16 v19, 0xa

    const/16 v24, 0x1

    const/16 v35, 0x1

    const/16 v34, 0x0

    const/16 v31, 0x0

    const/16 v30, 0x1

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v18

    move/from16 v1, v39

    if-ge v0, v1, :cond_a

    aget-object v39, p0, v18

    const-string/jumbo v40, "-c"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    aget-object v39, p0, v18

    const-string/jumbo v40, "-w"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_2

    aget-object v39, p0, v18

    const-string/jumbo v40, "-v"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3

    aget-object v39, p0, v18

    const-string/jumbo v40, "-s"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    aget-object v39, p0, v18

    const-string/jumbo v40, "-n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_5

    aget-object v39, p0, v18

    const-string/jumbo v40, "-N"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_6

    aget-object v39, p0, v18

    const-string/jumbo v40, "-d"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    aget-object v39, p0, v18

    const-string/jumbo v40, "-E"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_9

    aget-object v37, p0, v18

    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v18, v18, 0x1

    aget-object v39, p0, v18

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v35, 0x0

    goto :goto_1

    :cond_3
    const/16 v35, 0x1

    goto :goto_1

    :cond_4
    const/16 v34, 0x1

    goto :goto_1

    :cond_5
    const/16 v24, 0x0

    goto :goto_1

    :cond_6
    const/16 v24, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v18, v18, 0x1

    aget-object v9, p0, v18

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    sget-object v39, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v39, 0x2

    move/from16 v0, v39

    if-gt v8, v0, :cond_8

    const/16 v31, 0x0

    :goto_2
    goto :goto_1

    :cond_8
    const/16 v31, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_9
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

    :cond_a
    if-eqz v37, :cond_b

    :goto_3
    new-instance v27, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;

    invoke-direct/range {v27 .. v27}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;-><init>()V

    :try_start_2
    const-string/jumbo v39, "http://xml.org/sax/features/namespaces"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v39, "http://xml.org/sax/features/validation"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v34, :cond_c

    :goto_4
    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v5

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v7, v0, :cond_d

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "Usage: org.apache.xml.resolver.apps.xread [opts] xmlfile"

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    :cond_c
    :try_start_3
    const-string/jumbo v39, "http://apache.org/xml/features/validation/schema"

    const/16 v40, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v39

    goto :goto_4

    :cond_d
    new-instance v38, Lmf/org/apache/xml/resolver/apps/XParseError;

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    if-nez v35, :cond_11

    const-string/jumbo v26, "well-formed"

    :goto_6
    if-nez v24, :cond_12

    const-string/jumbo v25, "namespace-ignorant"

    :goto_7
    if-gtz v19, :cond_13

    :goto_8
    new-instance v32, Ljava/util/Date;

    invoke-direct/range {v32 .. v32}, Ljava/util/Date;-><init>()V

    :try_start_4
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->parse(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_9
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v40

    invoke-virtual/range {v32 .. v32}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    sub-long v20, v40, v42

    const-wide/16 v28, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v40, 0x3e8

    cmp-long v39, v20, v40

    if-gtz v39, :cond_14

    const/16 v39, 0x1

    :goto_a
    if-nez v39, :cond_e

    const-wide/16 v40, 0x3e8

    div-long v28, v20, v40

    const-wide/16 v40, 0x3e8

    rem-long v20, v20, v40

    :cond_e
    const-wide/16 v40, 0x3c

    cmp-long v39, v28, v40

    if-gtz v39, :cond_15

    const/16 v39, 0x1

    :goto_b
    if-nez v39, :cond_f

    const-wide/16 v40, 0x3c

    div-long v22, v28, v40

    const-wide/16 v40, 0x3c

    rem-long v28, v28, v40

    :cond_f
    const-wide/16 v40, 0x3c

    cmp-long v39, v22, v40

    if-gtz v39, :cond_16

    const/16 v39, 0x1

    :goto_c
    if-nez v39, :cond_10

    const-wide/16 v40, 0x3c

    div-long v16, v22, v40

    const-wide/16 v40, 0x3c

    rem-long v22, v22, v40

    :cond_10
    if-gtz v19, :cond_17

    :goto_d
    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v39

    if-gtz v39, :cond_23

    :goto_e
    return-void

    :cond_11
    const-string/jumbo v26, "validating"

    goto :goto_6

    :cond_12
    const-string/jumbo v25, "namespace-aware"

    goto :goto_7

    :cond_13
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    const-string/jumbo v41, "Attempting "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " parse"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_3
    move-exception v33

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    const-string/jumbo v41, "SAX Exception: "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_14
    const/16 v39, 0x0

    goto/16 :goto_a

    :cond_15
    const/16 v39, 0x0

    goto/16 :goto_b

    :cond_16
    const/16 v39, 0x0

    goto :goto_c

    :cond_17
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "Parse "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v39

    if-gtz v39, :cond_1b

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "succeeded "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "("

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-wide/16 v40, 0x0

    cmp-long v39, v16, v40

    if-gtz v39, :cond_1c

    const/16 v39, 0x1

    :goto_f
    if-nez v39, :cond_18

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v41, ":"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_18
    const-wide/16 v40, 0x0

    cmp-long v39, v16, v40

    if-lez v39, :cond_1d

    const/16 v39, 0x1

    :goto_10
    if-nez v39, :cond_19

    const-wide/16 v40, 0x0

    cmp-long v39, v22, v40

    if-gtz v39, :cond_1e

    const/16 v39, 0x1

    :goto_11
    if-nez v39, :cond_1a

    :cond_19
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v41, ":"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1a
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v41, "."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, ") "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_12
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "with "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v12

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v36

    if-gtz v12, :cond_1f

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "no errors and "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_13
    if-gtz v36, :cond_21

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "no warnings."

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_14
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, ""

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_1b
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "failed "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    const/16 v39, 0x0

    goto/16 :goto_f

    :cond_1d
    const/16 v39, 0x0

    goto/16 :goto_10

    :cond_1e
    const/16 v39, 0x0

    goto/16 :goto_11

    :cond_1f
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v41, " error"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v39, 0x1

    move/from16 v0, v39

    if-gt v12, v0, :cond_20

    const-string/jumbo v39, ""

    :goto_15
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, " and "

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_13

    :cond_20
    const-string/jumbo v39, "s"

    goto :goto_15

    :cond_21
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v41, " warning"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v39, 0x1

    move/from16 v0, v36

    move/from16 v1, v39

    if-gt v0, v1, :cond_22

    const-string/jumbo v39, ""

    :goto_16
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v40, "."

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_22
    const-string/jumbo v39, "s"

    goto :goto_16

    :cond_23
    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_e
.end method
