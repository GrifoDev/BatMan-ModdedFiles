.class public Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;
.super Landroid/view/View;
.source "SolidBounceEffect.java"


# instance fields
.field private mAnim1stBezierY:Landroid/animation/ValueAnimator;

.field private mAnim2ndBezierY:Landroid/animation/ValueAnimator;

.field private mAnimTargetY:Landroid/animation/ValueAnimator;

.field mDuration1stBezierY:J

.field mDuration2ndBezierY:J

.field mDurationTargetY:J

.field private mEndValue:F

.field private mMaximuBulge:F

.field private mPrevBulge:F

.field private mPrevTargetY:F

.field private mStartValue:F

.field private mTargetY:F

.field private mWavePath:Landroid/graphics/Path;

.field private mWavePathPnt:Landroid/graphics/Paint;

.field private waveBezierY:F

.field private waveBottom:F

.field private waveCenterX:F

.field private waveLeft:F

.field private waveRight:F

.field private waveTop:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mEndValue:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mMaximuBulge:F

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mPrevBulge:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mPrevTargetY:F

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mStartValue:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mEndValue:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mPrevBulge:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mPrevTargetY:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mStartValue:F

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clearAnim()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public moveToTraget(JFJFJJ)V
    .locals 9

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iput p3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mTargetY:F

    iput-wide p4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mDurationTargetY:J

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mDuration1stBezierY:J

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mDuration2ndBezierY:J

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mTargetY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    neg-float v2, p6

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mMaximuBulge:F

    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mStartValue:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mPrevBulge:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mMaximuBulge:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mEndValue:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mStartValue:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mEndValue:F

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mDuration1stBezierY:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3f547ae1    # 0.83f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mStartValue:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mPrevTargetY:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mTargetY:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mEndValue:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mStartValue:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mEndValue:F

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mDurationTargetY:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    iput p6, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mMaximuBulge:F

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->clearAnim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePathPnt:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePathPnt:Landroid/graphics/Paint;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePathPnt:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePathPnt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveCenterX:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveRight:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveCenterX:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveLeft:F

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mWavePathPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setToTarget(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveBezierY:F

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->waveTop:F

    return-void
.end method
