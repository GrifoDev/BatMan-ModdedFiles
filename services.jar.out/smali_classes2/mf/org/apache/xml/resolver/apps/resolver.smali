.class public Lmf/org/apache/xml/resolver/apps/resolver;
.super Ljava/lang/Object;
.source "resolver.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_8

    aget-object v27, p0, v15

    const-string/jumbo v28, "-c"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    aget-object v27, p0, v15

    const-string/jumbo v28, "-p"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    aget-object v27, p0, v15

    const-string/jumbo v28, "-s"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    aget-object v27, p0, v15

    const-string/jumbo v28, "-n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    aget-object v27, p0, v15

    const-string/jumbo v28, "-u"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    aget-object v27, p0, v15

    const-string/jumbo v28, "-a"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    aget-object v27, p0, v15

    const-string/jumbo v28, "-d"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    aget-object v19, p0, v15

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v15, v15, 0x1

    aget-object v27, p0, v15

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v15, v15, 0x1

    aget-object v17, p0, v15

    goto :goto_1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    aget-object v24, p0, v15

    goto :goto_1

    :cond_4
    add-int/lit8 v15, v15, 0x1

    aget-object v16, p0, v15

    goto :goto_1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    aget-object v25, p0, v15

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v15, v15, 0x1

    aget-object v11, p0, v15

    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_0

    sget-object v27, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_8
    if-eqz v19, :cond_a

    :goto_2
    const-string/jumbo v27, "doctype"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_b

    const-string/jumbo v27, "document"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_c

    const-string/jumbo v27, "entity"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_d

    const-string/jumbo v27, "notation"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_e

    const-string/jumbo v27, "public"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_f

    const-string/jumbo v27, "system"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string/jumbo v27, "uri"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_11

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, " is not a recognized keyword."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    :cond_9
    :goto_3
    if-nez v5, :cond_12

    :goto_4
    new-instance v8, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-direct {v8}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>()V

    invoke-virtual {v8}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v20

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_13

    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_2

    :cond_b
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    if-nez v17, :cond_9

    if-nez v24, :cond_9

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "DOCTYPE requires public or system identifier."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto :goto_3

    :cond_c
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    goto :goto_3

    :cond_d
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    if-nez v17, :cond_9

    if-nez v24, :cond_9

    if-nez v16, :cond_9

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "ENTITY requires name or public or system identifier."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto :goto_3

    :cond_e
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    if-nez v17, :cond_9

    if-nez v24, :cond_9

    if-nez v16, :cond_9

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "NOTATION requires name or public or system identifier."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto :goto_3

    :cond_f
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    if-nez v17, :cond_9

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "PUBLIC requires public identifier."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto :goto_3

    :cond_10
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    if-nez v24, :cond_9

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "SYSTEM requires system identifier."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_3

    :cond_11
    sget v18, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    if-nez v25, :cond_9

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "URI requires a uri."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_3

    :cond_12
    const/4 v6, 0x0

    const/16 v22, 0x0

    :try_start_1
    const-string/jumbo v27, "basename"

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :goto_6
    :try_start_2
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v24

    goto/16 :goto_4

    :catch_1
    move-exception v12

    const-string/jumbo v27, "user.dir"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x5c

    const/16 v28, 0x2f

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v28, "Malformed URL on cwd"

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_6

    :catch_2
    move-exception v12

    :goto_7
    :try_start_4
    new-instance v22, Ljava/net/URL;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "file:///"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v13

    sget-object v27, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v28, "Malformed URL on system id"

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    const/16 v21, 0x0

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_19

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_22

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_25

    sget v27, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_27

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "resType is wrong!? This can\'t happen!"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    :goto_8
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "Result: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve DOCTYPE (name, publicid, systemid):"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v16, :cond_15

    :goto_9
    if-nez v17, :cond_16

    :goto_a
    if-nez v24, :cond_17

    :goto_b
    if-nez v25, :cond_18

    :goto_c
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/Catalog;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    :cond_15
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "       name: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  public id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  system id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "        uri: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve DOCUMENT ():"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lmf/org/apache/xml/resolver/Catalog;->resolveDocument()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    :cond_1a
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve ENTITY (name, publicid, systemid):"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v16, :cond_1b

    :goto_d
    if-nez v17, :cond_1c

    :goto_e
    if-nez v24, :cond_1d

    :goto_f
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/Catalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    :cond_1b
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "       name: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_1c
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  public id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  system id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve NOTATION (name, publicid, systemid):"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v16, :cond_1f

    :goto_10
    if-nez v17, :cond_20

    :goto_11
    if-nez v24, :cond_21

    :goto_12
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/Catalog;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    :cond_1f
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "       name: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  public id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_21
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  system id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_22
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve PUBLIC (publicid, systemid):"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v17, :cond_23

    :goto_13
    if-nez v24, :cond_24

    :goto_14
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    :cond_23
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  public id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  system id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_25
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve SYSTEM (systemid):"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v24, :cond_26

    :goto_15
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    :cond_26
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "  system id: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_15

    :cond_27
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v28, "Resolve URI (uri):"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v25, :cond_28

    :goto_16
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    :cond_28
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "        uri: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16

    :catch_4
    move-exception v12

    move-object/from16 v22, v23

    goto/16 :goto_7
.end method

.method public static usage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage: resolver [options] keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Where:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-c catalogfile  Loads a particular catalog file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-n name         Sets the name."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-p publicId     Sets the public identifier."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-s systemId     Sets the system identifier."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-a              Makes the system URI absolute before resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-u uri          Sets the URI."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-d integer      Set the debug level."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "keyword         Identifies the type of resolution to perform:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "                doctype, document, entity, notation, public, system,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "                or uri."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
