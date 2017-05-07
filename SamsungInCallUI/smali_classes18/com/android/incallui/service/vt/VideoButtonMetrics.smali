.class public Lcom/android/incallui/service/vt/VideoButtonMetrics;
.super Ljava/lang/Object;
.source "VideoButtonMetrics.java"


# instance fields
.field public answer_bg_height:I

.field public answer_floating_button_bottom_offset:I

.field public answer_incoming_area_height:I

.field public answer_incoming_area_width:I

.field public answer_reject_message_handler_width:I

.field public bottom_offset:I

.field public height:I

.field public height_with_offset:I

.field public top:I

.field public transparent_answer_bg:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " ButtonMetrics{width=%s, height=%s, bottom_offset=%s, height_with_offset=%s, top=%s, answer_bg_height=%s} "

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v21

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasMultiWindowType(I)Z

    move-result v26

    if-nez v26, :cond_0

    if-eqz v12, :cond_8

    :cond_0
    const/4 v14, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v26

    if-eqz v26, :cond_9

    if-nez v12, :cond_9

    const/4 v6, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-static/range {p2 .. p2}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v17

    if-nez v14, :cond_a

    move/from16 v0, v25

    if-ge v7, v0, :cond_a

    const/4 v15, 0x1

    :goto_2
    if-eqz v15, :cond_b

    const v3, 0x7f0d0002

    :goto_3
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    const v26, 0x7f0a0358

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v13

    move/from16 v0, v23

    if-le v0, v13, :cond_1

    move/from16 v23, v13

    :cond_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->width:I

    const v26, 0x7f0a02d9

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    if-nez v11, :cond_c

    if-nez v14, :cond_c

    if-nez v10, :cond_c

    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d0068

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v26, v4, 0x2

    sub-int v26, v24, v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    move/from16 v26, v0

    if-gez v26, :cond_2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    :cond_2
    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d0069

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    move/from16 v26, v0

    sub-int v26, v7, v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    if-eqz v6, :cond_3

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    move/from16 v26, v0

    add-int v26, v26, v17

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    move/from16 v26, v0

    add-int v26, v26, v17

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    move/from16 v26, v0

    sub-int v26, v26, v17

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    :cond_3
    if-nez v14, :cond_d

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->isTabletType(I)Z

    move-result v26

    if-nez v26, :cond_4

    if-nez v11, :cond_4

    move/from16 v0, v25

    if-ge v7, v0, :cond_d

    :cond_4
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    :goto_5
    const v26, 0x7f0a01d8

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v19

    const v26, 0x7f0a01e1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v16

    sget v26, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v26

    if-eqz v26, :cond_e

    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d006c

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v2, v0

    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d006d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v26, v19, 0x2

    add-int v26, v26, v16

    add-int v26, v26, v2

    add-int v26, v26, v20

    const v27, 0x7f0a051a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    :goto_6
    sget v26, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->PHONE:I

    move/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->is(II)Z

    move-result v26

    if-eqz v26, :cond_5

    if-nez v14, :cond_5

    if-nez v11, :cond_5

    move/from16 v0, v25

    if-lt v7, v0, :cond_5

    if-eqz v10, :cond_f

    :cond_5
    int-to-float v0, v7

    move/from16 v26, v0

    const/high16 v27, 0x7f0d0000

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->transparent_answer_bg:Z

    :goto_7
    if-eqz v6, :cond_6

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    move/from16 v26, v0

    add-int v26, v26, v17

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    move/from16 v26, v0

    add-int v26, v26, v17

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    move/from16 v26, v0

    const v27, 0x7f0a0027

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    :cond_7
    const v26, 0x7f0d0070

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getInteger(I)I

    move-result v5

    const v26, 0x7f0d0071

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getInteger(I)I

    move-result v9

    mul-int/lit8 v26, v5, 0x2

    add-int v18, v26, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    move/from16 v26, v0

    mul-int/lit8 v27, v19, 0x2

    sub-int v26, v26, v27

    mul-int v26, v26, v5

    div-int v8, v26, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    move/from16 v26, v0

    mul-int/lit8 v27, v8, 0x2

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_reject_message_handler_width:I

    return-void

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_b
    const v3, 0x7f0d0001

    goto/16 :goto_3

    :cond_c
    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d0065

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePercent(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    move/from16 v27, v0

    add-int v26, v26, v27

    add-int v26, v26, v22

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    goto/16 :goto_4

    :cond_d
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    goto/16 :goto_5

    :cond_e
    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d006e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v2, v0

    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x7f0d006f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v26, v20, v19

    add-int v26, v26, v2

    add-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->transparent_answer_bg:Z

    goto/16 :goto_7
.end method
