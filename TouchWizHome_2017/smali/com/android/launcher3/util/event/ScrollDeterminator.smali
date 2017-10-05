.class public Lcom/android/launcher3/util/event/ScrollDeterminator;
.super Ljava/lang/Object;
.source "ScrollDeterminator.java"

# interfaces
.implements Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;,
        Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;
    }
.end annotation


# static fields
.field private static final BOUNDARY:F = 1.0f

.field private static final DIRECTION_HORIZONTAL:I = 0x1

.field private static final DIRECTION_MOVE_ON_BLOCK:I = -0x2

.field private static final DIRECTION_UNINSPEDTED:I = -0x1

.field private static final DIRECTION_VERTICAL:I = 0x0

.field private static final LOCKED_COUNT:I = 0xa


# instance fields
.field private mAverageAcceleration:F

.field private mBlockArea:Landroid/graphics/Rect;

.field private mEnableHScroll:Z

.field private mIsBlocked:Z

.field private mIsTalkBackEnabled:Z

.field private mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

.field private mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

.field private mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mAverageAcceleration:F

    iput-boolean v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    iput-boolean v3, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    iput-boolean v3, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsTalkBackEnabled:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;-><init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    iput-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;-><init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    sget-object v0, Lcom/android/launcher3/common/view/LauncherRootView;->sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    return-void
.end method

.method private getAverageAccelaration()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mAverageAcceleration:F

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getAverageAccelaration()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mAverageAcceleration:F

    goto :goto_0
.end method

.method private isBlockedArea(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private setBlockArea(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v0, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAvailableWidthPx()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private setScrollableId()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsTalkBackEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getScrollId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLongPressOnHScroll()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getXDistanceFromPress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->getSystemTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountTouchMove()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeltaXwithCompensation(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->getDeltaXwithCompensation(I)I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getAverageAccelaration()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/view/LauncherRootView;->sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    return-object v0
.end method

.method public isHorizontalScroll()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingOnBlock()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDirection()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScroll()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollWithSlop()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->getSystemTouchSlop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScrollWithThreshold(I)Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollWithThreshold(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getYDistanceFromPress()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2

    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isBlockedArea(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setScrollableId()V

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registrateController(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->addListener(ILcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;)V

    return-void
.end method

.method public setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Landroid/view/View;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isBlockedArea(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public setForceBlock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    return-void
.end method

.method setScrollableView(Lcom/android/launcher3/common/base/view/PagedView;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    return v0
.end method

.method public setScrollableView(Z)Z
    .locals 0

    return p1
.end method

.method public setSlopCompensation()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getXDistanceFromPress()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    return-void
.end method

.method public setSystemTouchSlop(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->setSystemTouchSlop(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->getSystemTouchSlop()I

    move-result v1

    goto :goto_0
.end method

.method public setTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsTalkBackEnabled:Z

    return v0
.end method
