.class public Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;
.super Landroid/view/View;
.source "ColorGradientAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorGradientAnimationView"
.end annotation


# instance fields
.field mAnimation_mode:I

.field mGradientColor:[[F

.field mGradientColor_background:[F

.field mGradientLinear_left:Landroid/graphics/Bitmap;

.field mGradientLinear_right:Landroid/graphics/Bitmap;

.field mGradient_anim_value_left:F

.field mGradient_anim_value_right:F

.field mGradient_last_anim_time_left:J

.field mGradient_last_anim_time_right:J

.field mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

.field mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

.field mGradient_moving_duration_left:I

.field mGradient_moving_duration_right:I

.field mLoopCount:I

.field mStandardScreenHeight:I

.field mStandardScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;->mGradientColorSet:[[[F

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor_background:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a0

    iput v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenWidth:I

    const/16 v1, 0xb90

    iput v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    iput v6, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    iput v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_right:F

    iput v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_left:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_right:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_left:I

    iput v4, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    new-array v2, v7, [F

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_right:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;-><init>(Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    new-array v2, v7, [F

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_right:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$2;-><init>(Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    invoke-direct {v0}, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    aget-object v1, v1, v5

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    aget-object v1, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setColorGradient_from_ColorGradientResult(Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;)V

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    invoke-virtual {p0, v1}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setAnimationMode(I)V

    return-void

    :array_0
    .array-data 4
        0x435a0000    # 218.0f
        0x3edc28f6    # 0.43f
        0x3f23d70a    # 0.64f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancle_animation()V
    .locals 6

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iput-wide v4, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public getColorGradient()[[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    return-object v0
.end method

.method public getRepeatmode()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lerf(FFF)F
    .locals 1

    sub-float v0, p3, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 48

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->getHeight()I

    move-result v41

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenWidth:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v43, v44, v45

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v33, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor_background:[F

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v37, Landroid/graphics/Paint;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Paint;-><init>()V

    const/16 v40, 0x32

    new-instance v35, Landroid/graphics/Matrix;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Matrix;-><init>()V

    new-instance v36, Landroid/graphics/Matrix;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v21, 0x41d00000    # 26.0f

    const/high16 v22, 0x41b00000    # 22.0f

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x3f266666    # 0.65f

    mul-float v31, v44, v45

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x3f666666    # 0.9f

    mul-float v27, v44, v45

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x3ecccccd    # 0.4f

    mul-float v32, v44, v45

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x3f59999a    # 0.85f

    mul-float v28, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const/high16 v46, 0x42b40000    # 90.0f

    sub-float v46, v46, v21

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    div-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const/high16 v46, 0x42b40000    # 90.0f

    sub-float v46, v46, v22

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    div-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v26, v0

    div-float v44, v27, v25

    const/high16 v45, 0x3f800000    # 1.0f

    mul-float v23, v44, v45

    div-float v44, v28, v26

    const/high16 v45, 0x3f800000    # 1.0f

    mul-float v24, v44, v45

    sub-float v44, v25, v31

    mul-float v29, v44, v23

    sub-float v44, v26, v32

    mul-float v30, v44, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_right:F

    move/from16 v44, v0

    const v45, 0x40490fdb    # (float)Math.PI

    mul-float v44, v44, v45

    const/high16 v45, 0x40000000    # 2.0f

    mul-float v17, v44, v45

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const v8, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    neg-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x3f800000    # 1.0f

    add-float v44, v44, v45

    const/high16 v45, 0x3f000000    # 0.5f

    mul-float v38, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_left:F

    move/from16 v44, v0

    const v45, 0x40490fdb    # (float)Math.PI

    mul-float v44, v44, v45

    const/high16 v45, 0x40000000    # 2.0f

    mul-float v16, v44, v45

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const v9, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    neg-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x3f800000    # 1.0f

    add-float v44, v44, v45

    const/high16 v45, 0x3f000000    # 0.5f

    mul-float v39, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_0

    move/from16 v18, v30

    const/4 v13, 0x0

    mul-float v15, v38, v18

    move/from16 v19, v29

    const/4 v12, 0x0

    mul-float v14, v39, v19

    :goto_0
    const/16 v34, 0x0

    :goto_1
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Matrix;->reset()V

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v33

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v14

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v7

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-float v44, v23, v11

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v23

    move/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-int/lit8 v44, v34, -0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v45

    mul-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    :pswitch_0
    move/from16 v18, v30

    const/4 v13, 0x0

    mul-float v15, v38, v18

    move/from16 v19, v29

    const/4 v12, 0x0

    mul-float v14, v39, v19

    goto/16 :goto_0

    :cond_0
    const/16 v34, 0x0

    :goto_2
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_1

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Matrix;->reset()V

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v33

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v15

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-float v44, v22, v6

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-float v44, v24, v10

    add-float v45, v24, v10

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-int/lit8 v44, v34, -0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v45

    mul-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->pause_animation()V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->start_animation()V

    goto :goto_0
.end method

.method public pause_animation()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public setAnimationMode(I)V
    .locals 12

    iput p1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    iget v5, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    const/4 v6, 0x0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x9c4

    move v1, v0

    div-int/lit8 v6, v0, 0x3

    :goto_0
    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    rem-long/2addr v8, v10

    long-to-float v7, v8

    int-to-float v8, v0

    iget-object v9, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-long v8, v7

    iput-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->isRunning()Z

    move-result v3

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iput v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_right:I

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    rem-long/2addr v8, v10

    long-to-float v7, v8

    int-to-float v8, v0

    iget-object v9, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-long v8, v7

    iput-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    int-to-long v8, v6

    iget-wide v10, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->invalidate()V

    return-void

    :pswitch_1
    const/16 v0, 0xbb8

    move v1, v0

    const/4 v6, 0x0

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0xfa0

    move v1, v0

    const/4 v6, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundColor([F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor_background:[F

    return-void
.end method

.method public setColorGradient([[F)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    invoke-direct {v0}, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setColorGradient_from_ColorGradientResult(Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;)V

    return-void
.end method

.method setColorGradient_from_ColorGradientResult(Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;)V
    .locals 10

    const/16 v9, 0x1000

    const/16 v8, 0xff

    const/16 v7, 0x80

    const/16 v6, 0x32

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/16 v2, 0x200

    invoke-static {v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->setDithering_step_value(I)V

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->setDithering_sample_size(I)V

    iget v1, p1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    invoke-static {v6, v8, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v1, v2, v7, v9}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->getGradation_low_machband(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    invoke-static {v6, v8, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v0, v2, v7, v9}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->getGradation_low_machband(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->invalidate()V

    return-void
.end method

.method public setRepeatmode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    iget v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setAnimationMode(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    iget v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setAnimationMode(I)V

    goto :goto_0
.end method

.method public start_animation()V
    .locals 9

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-eq v2, v8, :cond_0

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iput-wide v6, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_right:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-eq v2, v8, :cond_1

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    iput-wide v6, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_duration_left:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
