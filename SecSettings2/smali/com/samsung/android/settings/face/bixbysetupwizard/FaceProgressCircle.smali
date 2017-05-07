.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;
.super Landroid/view/View;
.source "FaceProgressCircle.java"


# instance fields
.field private final PROGRESS_DURATION:I

.field private greyPaint:Landroid/graphics/Paint;

.field private mCurrentPercent:F

.field private mHalfStrokeWidth:F

.field private mHeight:I

.field private mPreviousPercent:F

.field private mRadius:F

.field private mStrokeWidth:F

.field private mTargetPercent:F

.field private mWidth:I

.field private paint:Landroid/graphics/Paint;

.field private progressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mCurrentPercent:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mPreviousPercent:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mTargetPercent:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mCurrentPercent:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->PROGRESS_DURATION:I

    iput v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mTargetPercent:F

    iput v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mCurrentPercent:F

    iput v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mPreviousPercent:F

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mWidth:I

    iput p3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHeight:I

    int-to-float v0, p6

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mStrokeWidth:F

    int-to-float v0, p6

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    sub-int v0, p2, p6

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mRadius:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    int-to-float v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    int-to-float v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->setAnimator()V

    return-void
.end method

.method private setAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v2, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mCurrentPercent:F

    const v1, 0x40666666    # 3.6f

    mul-float v6, v1, v0

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mWidth:I

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mRadius:F

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    sub-float v4, v0, v4

    const/high16 v5, -0x3d4c0000    # -90.0f

    iget-object v8, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mHalfStrokeWidth:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->greyPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPercent(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mTargetPercent:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mCurrentPercent:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->mPreviousPercent:F

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->setAlpha(F)V

    return-void
.end method
