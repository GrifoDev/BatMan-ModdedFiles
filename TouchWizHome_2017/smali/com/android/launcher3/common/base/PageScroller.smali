.class public Lcom/android/launcher3/common/base/PageScroller;
.super Ljava/lang/Object;
.source "PageScroller.java"


# static fields
.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLeftScreen:I

.field private mMode:I

.field private mRightScreen:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/PageScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    iput-object p2, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method private static viscousFluid(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    :goto_0
    return p0

    :cond_0
    const v0, 0x3ebc5ab2

    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    if-ge v1, v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float v4, v1

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDurationReciprocal:F

    mul-float v2, v4, v5

    iget-object v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/android/launcher3/common/base/PageScroller;->viscousFluid(F)F

    move-result v2

    :goto_1
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaX:F

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaY:F

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iget v6, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    iget v6, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    if-ne v4, v5, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    iput-boolean v3, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final forceFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    return-void
.end method

.method public final getCurrX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    return v0
.end method

.method public isUpdatedScreenIndex(II)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mLeftScreen:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mRightScreen:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mLeftScreen:I

    iput p2, p0, Lcom/android/launcher3/common/base/PageScroller;->mRightScreen:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iget v1, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mMode:I

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    iput p5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartTime:J

    iput p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    iput p2, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    add-int v0, p1, p3

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    add-int v0, p2, p4

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    int-to-float v0, p3

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaX:F

    int-to-float v0, p4

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
