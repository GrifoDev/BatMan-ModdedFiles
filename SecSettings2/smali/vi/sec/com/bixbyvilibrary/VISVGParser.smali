.class public Lvi/sec/com/bixbyvilibrary/VISVGParser;
.super Ljava/lang/Object;
.source "VISVGParser.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    move v1, p1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    if-ne v1, p1, :cond_2

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 1

    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VISVGParser;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public parsingPathElement(Ljava/lang/String;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .locals 36

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v26, 0x0

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v29

    if-lt v0, v1, :cond_0

    return-object p2

    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    sparse-switch v25, :sswitch_data_0

    :goto_1
    :sswitch_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    :sswitch_1
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v4, 0xc8

    invoke-direct {v3, v4, v5, v6}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    move/from16 v27, v5

    move/from16 v28, v6

    goto :goto_1

    :sswitch_2
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_2

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_3

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_4

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_5

    :goto_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v4, 0xca

    invoke-direct/range {v3 .. v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    move/from16 v27, v9

    move/from16 v28, v10

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v26, v26, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v26, v26, -0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v26, v26, -0x1

    goto :goto_6

    :sswitch_3
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_6

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_7

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_8

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_9

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_a

    :goto_b
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v12, 0xca

    add-float v13, v5, v27

    add-float v14, v6, v28

    add-float v15, v7, v27

    add-float v16, v8, v28

    add-float v17, v9, v27

    add-float v18, v10, v28

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    add-float v20, v7, v27

    add-float v23, v8, v28

    add-float v21, v9, v27

    add-float v24, v10, v28

    add-float v27, v27, v9

    add-float v28, v28, v10

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_7

    :cond_7
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_8

    :cond_8
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v26, v26, -0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v26, v26, -0x1

    goto :goto_b

    :sswitch_4
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_b

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_c

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_d

    :goto_e
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v12, 0xca

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v21

    sub-float v13, v4, v20

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v24

    sub-float v14, v4, v23

    add-float v15, v5, v27

    add-float v16, v6, v28

    add-float v17, v7, v27

    add-float v18, v8, v28

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    add-float v27, v27, v7

    add-float v28, v28, v8

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v26, v26, -0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v26, v26, -0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v26, v26, -0x1

    goto :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x63 -> :sswitch_3
        0x6d -> :sswitch_0
        0x73 -> :sswitch_4
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
