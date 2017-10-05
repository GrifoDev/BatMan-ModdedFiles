.class public Lcom/android/launcher3/common/view/ScrollHelperByRootView;
.super Ljava/lang/Object;
.source "ScrollHelperByRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;
    }
.end annotation


# static fields
.field private static final LIMIT_TRACE:I = 0x14

.field public static final LISTENER_APPSCONTROLLER:I = 0x1

.field public static final LISTENER_HOMECONTROLLER:I = 0x0

.field private static final LISTENER_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LauncherScroll"

.field private static final X:I = 0x0

.field private static final Y:I = 0x1


# instance fields
.field private mDistanceFromPress:[F

.field private mGradientCount:I

.field private mLastGradient:F

.field private mPressed:Z

.field private mPressedXY:[F

.field private mScrollId:I

.field private mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

.field private mSumOfAccelaration:F

.field private mTouch:[F

.field private mTraceTouchEvent:Ljava/lang/StringBuilder;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    iput v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    iput v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iput v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    iput v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollId:I

    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

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

.method private displayTrace(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LauncherScroll"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private enableTrace()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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

.method private noticeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
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

.method private traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "|"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(ILcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    aput-object p2, v0, p1

    :cond_0
    return-void
.end method

.method public getAverageAccelaration()F
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v2, 0x3fd9999a    # 1.7f

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

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    return v0
.end method

.method public getScrollId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollId:I

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

.method requestPress()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    return-void
.end method

.method setTouchEvent(Landroid/view/MotionEvent;)I
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v1, v4, 0x8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    float-to-int v5, v2

    float-to-int v6, v3

    const-string v7, "R"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->displayTrace(Ljava/lang/StringBuilder;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->noticeOnTouchEvent(Landroid/view/MotionEvent;)V

    return v0

    :pswitch_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    float-to-int v5, v2

    float-to-int v6, v3

    const-string v7, "P"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->reset()V

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->enableTrace()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    float-to-int v5, v2

    float-to-int v6, v3

    const-string v7, "M"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove()V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollId:I

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
