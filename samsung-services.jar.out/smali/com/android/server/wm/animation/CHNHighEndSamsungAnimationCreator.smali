.class public Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;
.super Lcom/android/server/wm/animation/SamsungAnimationCreator;
.source "CHNHighEndSamsungAnimationCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CHNHighEndSamsungAnimationCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->initSamsungAnimationFactor()V

    return-void
.end method

.method private getAppExitScaleAnimationPivotXValue()F
    .locals 5

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    const-string/jumbo v2, "CHNHighEndSamsungAnimationCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppExitScaleAnimationPivotXValue result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getAppExitScaleAnimationPivotYValue()F
    .locals 5

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    const-string/jumbo v2, "CHNHighEndSamsungAnimationCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppExitScaleAnimationPivotYValue result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;
    .locals 8

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSamsungAnimation type/enter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSamsungAnimation wallpaerXOffset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSamsungAnimation isSplit/isFixedOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSamsungAnimation displayFrame/frame/insets : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->setAppWindowSize(Landroid/graphics/Rect;)V

    :cond_1
    sparse-switch p2, :sswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :sswitch_0
    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :sswitch_1
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :sswitch_2
    invoke-virtual {p0, p7}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :sswitch_3
    move/from16 v0, p9

    invoke-virtual {p0, p7, v0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :sswitch_4
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :sswitch_5
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method

.method public createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
    .locals 20

    const-string/jumbo v3, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v4, "createSamsungAppEnterAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    if-eqz p1, :cond_2

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    if-nez p5, :cond_1

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_1

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_0

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    new-instance v12, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, v17

    invoke-direct {v12, v13, v0}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v4, v3

    int-to-double v6, v10

    const-wide v18, 0x3fd3333333333333L    # 0.3

    mul-double v6, v6, v18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    :goto_1
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v16

    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v4, v3

    int-to-double v6, v10

    const-wide v18, 0x3fe199999999999aL    # 0.55

    mul-double v6, v6, v18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    goto :goto_1

    :cond_5
    if-eqz p6, :cond_6

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto/16 :goto_2
.end method

.method public createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungAppExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v6, v5

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v12

    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v6, v5

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_2
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    invoke-direct {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->getAppExitScaleAnimationPivotXValue()F

    move-result v6

    invoke-direct {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->getAppExitScaleAnimationPivotYValue()F

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_2
.end method

.method public createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungTaskCloseAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eqz p1, :cond_0

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v12

    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungTaskOpenAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v12

    :cond_0
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 13

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungWallpaperEnterAnimation, wallpaperEnterAnimation is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungWallpaperEnterAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    mul-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAnimationTriggerActivity:I

    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v8, v7

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput-boolean v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    new-instance v1, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;-><init>(Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v8, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

    iget v9, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v10, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    iget v11, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v12, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_0
.end method

.method public createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungWallpaperExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAnimationTriggerLauncherScreen:I

    const/16 v2, 0x14

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v2, "createSamsungWallpaperExitAnimation SKIP, ANIMATION_TRIGGER_LAUNCHER_SCREEN_APPS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput-boolean v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_1
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput-boolean v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_1
.end method

.method public initSamsungAnimationFactor()V
    .locals 8

    const v7, 0x3dcccccd    # 0.1f

    const v6, 0x3f547ae1    # 0.83f

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v0, "CHNHighEndSamsungAnimationCreator"

    const-string/jumbo v1, "initSamsungAnimationFactor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f428f5c    # 0.76f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    iput v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    iput v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    const-wide/16 v0, 0x46

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iput v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iput v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    const-wide/16 v0, 0x42

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    const-wide/16 v0, 0xa6

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    return-void
.end method
