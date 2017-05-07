.class Lcom/android/launcher3/common/view/ScrollHelperByRootView;
.super Ljava/lang/Object;
.source "ScrollHelperByRootView.java"


# static fields
.field private static final X:I = 0x0

.field private static final Y:I = 0x1


# instance fields
.field private mDistanceFromPress:[F

.field private mGradientCount:I

.field private mLastGradient:F

.field private mPressed:Z

.field private mPressedXY:[F

.field private mSumOfAccelaration:F

.field private mTouch:[F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iput v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getDistanceFromPress()[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    return-object v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    return-void
.end method

.method private setMove()V
    .locals 5

    const/16 v0, 0x10

    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove(FF)V

    :cond_0
    return-void
.end method

.method private setMove(FF)V
    .locals 3

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    move v0, p2

    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    return-void

    :cond_0
    div-float v0, p2, p1

    goto :goto_0
.end method

.method private setTouch([FFF)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 v0, 0x1

    aput p3, p1, v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAverageAccelaration()F
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v2, 0x3fcccccd    # 1.6f

    const v3, 0x3f4ccccd    # 0.8f

    iget v5, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    if-nez v5, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    aget v5, v0, v7

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    aget v4, v0, v8

    :goto_1
    mul-float v5, v3, v4

    mul-float v6, v2, v1

    add-float/2addr v5, v6

    return v5

    :cond_0
    iget v5, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v6, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_0

    :cond_1
    aget v5, v0, v8

    aget v6, v0, v7

    div-float v4, v5, v6

    goto :goto_1
.end method

.method public getCount()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    int-to-float v0, v0

    return v0
.end method

.method public getXDistanceFromPress()F
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getYDistanceFromPress()F
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public requestPress()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    return-void
.end method

.method public setTouchEvent(Landroid/view/MotionEvent;)I
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    iput-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2

    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->reset()V

    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove()V

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
