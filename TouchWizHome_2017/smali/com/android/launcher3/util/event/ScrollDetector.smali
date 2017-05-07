.class public Lcom/android/launcher3/util/event/ScrollDetector;
.super Ljava/lang/Object;
.source "ScrollDetector.java"


# static fields
.field private static final BLOKED_COUNT:I = 0x0

.field private static final BOUNDARY:F = 1.0f

.field private static final DIRECTION_HORIZONTAL:I = 0x1

.field private static final DIRECTION_MOVE_ON_BLOCK:I = -0x2

.field private static final DIRECTION_UNINSPEDTED:I = -0x1

.field private static final DIRECTION_VERTICAL:I = 0x0

.field private static final LOCKED_COUNT:I = 0xa

.field private static final S_BLOCKED_BOUNCE_SLOP:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field private static sBlockArea:Landroid/graphics/Rect;

.field private static sEnableHScroll:Z

.field private static sIsBlocked:Z

.field private static sIsPressed:Z

.field private static sIsTalkBackEnabled:Z

.field private static sPagedViewTouchSlop:I

.field private static sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

.field private static sVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/android/launcher3/util/event/ScrollDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v0, Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-direct {v0}, Lcom/android/launcher3/util/event/ScrollHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    sput-boolean v1, Lcom/android/launcher3/util/event/ScrollDetector;->sIsPressed:Z

    sput-boolean v1, Lcom/android/launcher3/util/event/ScrollDetector;->sIsBlocked:Z

    sput-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    sput-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sIsTalkBackEnabled:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    sput v1, Lcom/android/launcher3/util/event/ScrollDetector;->sPagedViewTouchSlop:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static cancelLongPressOnHScroll()Z
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollHelper;->getXDistanceFromPress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/launcher3/util/event/ScrollDetector;->sPagedViewTouchSlop:I

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

.method public static getDirection()I
    .locals 2

    sget-object v1, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/ScrollHelper;->getAverageAccelaration()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/android/launcher3/util/event/ScrollDetector;->sIsBlocked:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isBlockedArea(FF)Z
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    float-to-int v1, p0

    float-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public static isBlockingAreaToBounce()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollHelper;->getCount()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollHelper;->getYDistanceFromPress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHorizontalScroll()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->getDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocked()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollHelper;->getCount()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMovingOnBlock()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->getDirection()I

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

.method public static isVerticalScroll()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static releaseVelocityTracker()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public static reset()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->releaseVelocityTracker()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sIsPressed:Z

    return-void
.end method

.method public static setBlockArea(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v0, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAvailableWidthPx()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/event/ScrollDetector;->setBlockArea(Landroid/view/View;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/util/event/ScrollDetector;->isBlockedArea(FF)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sIsBlocked:Z

    :goto_0
    sget-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sIsBlocked:Z

    return v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lcom/android/launcher3/util/event/ScrollDetector;->sBlockArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public static setBlockArea(Lcom/android/launcher3/home/HomeController;FF)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/event/ScrollDetector;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    move-result v1

    goto :goto_0
.end method

.method private static setMove()V
    .locals 4

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/event/ScrollHelper;->setMove(FF)V

    :cond_0
    return-void
.end method

.method public static setPagedViewTouchSlop(I)V
    .locals 0

    sput p0, Lcom/android/launcher3/util/event/ScrollDetector;->sPagedViewTouchSlop:I

    return-void
.end method

.method private static setScrollableId(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v1, v2, 0x8

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    sget-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sIsTalkBackEnabled:Z

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sIsBlocked:Z

    :cond_0
    return-void
.end method

.method public static setScrollableView(Lcom/android/launcher3/common/base/view/PagedView;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    return v0
.end method

.method public static setScrollableView(Lcom/android/launcher3/home/Workspace;Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sput-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    return v0
.end method

.method public static setTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/util/event/ScrollDetector;->sIsTalkBackEnabled:Z

    return v0
.end method

.method public static setTouchEvent(Landroid/view/MotionEvent;)I
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/launcher3/util/event/ScrollDetector;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lcom/android/launcher3/util/event/ScrollDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/util/event/ScrollHelper;->getXDistanceFromPress()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/util/event/ScrollHelper;->getYDistanceFromPress()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->releaseVelocityTracker()V

    sput-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sIsPressed:Z

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2

    :pswitch_1
    sput-boolean v4, Lcom/android/launcher3/util/event/ScrollDetector;->sIsPressed:Z

    sput-boolean v4, Lcom/android/launcher3/util/event/ScrollDetector;->sEnableHScroll:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/util/event/ScrollDetector;->isBlockedArea(FF)Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher3/util/event/ScrollDetector;->sIsBlocked:Z

    sget-object v3, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/util/event/ScrollHelper;->reset()V

    sget-object v3, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    sget-object v4, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    iget-object v4, v4, Lcom/android/launcher3/util/event/ScrollHelper;->mPressedTouch:[F

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/launcher3/util/event/ScrollHelper;->setTouch([FFF)V

    sget-object v3, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    sget-object v4, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    iget-object v4, v4, Lcom/android/launcher3/util/event/ScrollHelper;->mTouch:[F

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/launcher3/util/event/ScrollHelper;->setTouch([FFF)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/ScrollHelper;->getCount()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    sget-boolean v2, Lcom/android/launcher3/util/event/ScrollDetector;->sIsPressed:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    sget-object v3, Lcom/android/launcher3/util/event/ScrollDetector;->sScrollHelper:Lcom/android/launcher3/util/event/ScrollHelper;

    iget-object v3, v3, Lcom/android/launcher3/util/event/ScrollHelper;->mTouch:[F

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher3/util/event/ScrollHelper;->setTouch([FFF)V

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->setMove()V

    invoke-static {p0}, Lcom/android/launcher3/util/event/ScrollDetector;->setScrollableId(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
