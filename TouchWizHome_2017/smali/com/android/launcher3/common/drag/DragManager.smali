.class public Lcom/android/launcher3/common/drag/DragManager;
.super Ljava/lang/Object;
.source "DragManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;,
        Lcom/android/launcher3/common/drag/DragManager$DragListener;
    }
.end annotation


# static fields
.field private static final DELAY_TO_MOVE_EXTRA_ITEM:I = 0xa

.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I = 0x0

.field private static final MOVE_STAGE_TIME:I = 0x3e8

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field public static final RESCROLL_DELAY:I

.field public static final RESET_LAST_TOUCHUP_TIME:J = -0x1L

.field public static final SCROLL_DELAY:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field public static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragManager"


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

.field private mDragging:Z

.field private mDropAnimationMaxDuration:I

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsInScrollArea:Z

.field private mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

.field private mLastTouch:[I

.field private mLastTouchUpTime:J

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DragManager$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mMoveTarget:Landroid/view/View;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOutlineColor:I

.field private mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit16 v0, v0, 0x96

    sput v0, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mRectTemp:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    new-instance v0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;-><init>(Lcom/android/launcher3/common/drag/DragManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropAnimationMaxDuration:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/drag/DragManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/drag/DragManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/drag/DragManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/drag/DragManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V

    return-void
.end method

.method private checkScrollState(II)V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    instance-of v6, v6, Lcom/android/launcher3/common/drag/DragScroller;

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v3

    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    if-ge v6, v3, :cond_2

    sget v1, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    :goto_1
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    move v2, v4

    :goto_2
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_4

    move v0, v5

    :goto_3
    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    if-ge p1, v6, :cond_5

    iput-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v5, p1, p2, v2}, Lcom/android/launcher3/common/drag/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f4

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le p1, v6, :cond_6

    iput-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v5, p1, p2, v0}, Lcom/android/launcher3/common/drag/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    goto :goto_0
.end method

.method private checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {p1, v0, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0
.end method

.method private clearScrollRunnable()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->onExitScrollArea()Z

    :cond_0
    return-void
.end method

.method private countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I
    .locals 4

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    return p2
.end method

.method private createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3, p1}, Lcom/android/launcher3/common/drag/DragSource;->getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIdsForItem(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/util/List;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f04004c

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v3, p1, v2, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->show(Lcom/android/launcher3/common/drag/DropTarget$DragObject;ILjava/util/List;)V

    goto :goto_0
.end method

.method private dragOutOfQuickOptionBoundary(II)Z
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drop(FF)V
    .locals 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v9

    if-eqz v9, :cond_0

    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {p0, v9, v10}, Lcom/android/launcher3/common/drag/DragManager;->dragOutOfQuickOptionBoundary(II)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {p0, v9, v10, v2, v7}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v4

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v10, v2, v8

    iput v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v10, v2, v7

    iput v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    const/4 v0, 0x0

    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v7, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9, v8}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9}, Lcom/android/launcher3/common/drag/DropTarget;->acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9}, Lcom/android/launcher3/common/drag/DropTarget;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v0, :cond_4

    iget-object v12, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v12, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v12, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    if-eqz v12, :cond_4

    :cond_2
    :goto_0
    invoke-interface {v9, v10, v11, v7}, Lcom/android/launcher3/common/drag/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/drag/DragSource;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v8, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v0, :cond_5

    iget-boolean v9, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v9, :cond_5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v8

    invoke-interface {v5, v8, v6, v1}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v8

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    :cond_8
    return-void
.end method

.method private endDrag()V
    .locals 11

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v4, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v1, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$3;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/launcher3/common/drag/DragManager$3;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    iget v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropAnimationMaxDuration:I

    int-to-long v8, v7

    invoke-virtual {v1, v6, v8, v9}, Lcom/android/launcher3/common/drag/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-boolean v7, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v7, :cond_1

    new-instance v7, Lcom/android/launcher3/common/drag/DragManager$4;

    invoke-direct {v7, p0, v3}, Lcom/android/launcher3/common/drag/DragManager$4;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;)V

    iget v8, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropAnimationMaxDuration:I

    int-to-long v8, v8

    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/common/drag/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v10, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v10, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v10, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    :cond_3
    if-nez v4, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    invoke-interface {v5}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragEnd()Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 7

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mRectTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-interface {v4, p4}, Lcom/android/launcher3/common/drag/DropTarget;->isDropEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v3}, Lcom/android/launcher3/common/drag/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput p1, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput p2, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aput p1, p3, v5

    const/4 v5, 0x1

    aput p2, p3, v5

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Lcom/android/launcher3/common/view/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    return-object v0
.end method

.method private getOriginDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMoveEvent(II)V
    .locals 20

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/drag/DragManager;->dragOutOfQuickOptionBoundary(II)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v13}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionViewWithoutSALogging()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v13, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v13, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/drag/DragView;->animateUp()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher3/common/drag/DragView;->move(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    move/from16 v11, p1

    move/from16 v12, p2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v10, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/launcher3/common/drag/DragManager$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10, v11, v12}, Lcom/android/launcher3/common/drag/DragManager$5;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;II)V

    mul-int/lit8 v16, v5, 0xa

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v13}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v14, 0x0

    aget v14, v4, v14

    iput v14, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v14, 0x1

    aget v14, v4, v14

    iput v14, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/common/drag/DragManager;->checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    if-eq v9, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_5

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/16 v16, 0x0

    aget v13, v13, v16

    sub-int v13, v13, p1

    int-to-double v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/16 v18, 0x1

    aget v13, v13, v18

    sub-int v13, v13, p2

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-int v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/4 v14, 0x0

    aput p1, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/4 v14, 0x1

    aput p2, v13, v14

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V

    return-void

    :cond_7
    invoke-interface {v6}, Lcom/android/launcher3/common/drag/DropTarget;->getOutlineColor()I

    move-result v9

    goto :goto_1
.end method

.method private removePossibleQuickOptionView(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_0
    return-void
.end method

.method private setAnchor(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelDrag()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v5, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v3, v7, v4, v5}, Lcom/android/launcher3/common/drag/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DragSource;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v4, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1, v7, v7, v2}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    return-void
.end method

.method public cancelDragIfViewRemoved(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    :cond_1
    return-void
.end method

.method public createDragView(Landroid/view/View;II)Lcom/android/launcher3/common/drag/DragView;
    .locals 20

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    new-instance v18, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v11

    const/4 v3, 0x0

    aget v3, v19, v3

    int-to-float v3, v3

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    const/4 v3, 0x1

    aget v3, v19, v3

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v6, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    new-instance v2, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    neg-int v5, v14

    neg-int v6, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    sub-int v3, p2, v14

    sub-int v5, p3, v15

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    return-object v2
.end method

.method public createQuickOptionViewFromCenterKey(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v1, :cond_0

    :cond_2
    new-instance v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/drag/DragManager;->setAnchor(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->requestFocus()Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public enableQuickOptionView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->enable()V

    :cond_0
    return-void
.end method

.method public forceTouchMove()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    aget v3, v3, v5

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v3, v1, v4

    iput v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v3, v1, v5

    iput v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V

    return-void
.end method

.method public getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-object v0
.end method

.method public getLastGestureUpTime()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    goto :goto_0
.end method

.method public getQuickOptionView()Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public isInScrollArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    return v0
.end method

.method public isQuickOptionShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v2, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    :cond_0
    return-void
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/launcher3/common/drag/DragManager;->removePossibleQuickOptionView(Ljava/util/HashSet;)V

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_2

    move-object v2, v4

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragEnd()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    const/4 v5, 0x0

    aget v3, v2, v5

    const/4 v5, 0x1

    aget v4, v2, v5

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v5

    :pswitch_1
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v5, :cond_1

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->drop(FF)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-nez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    aget v2, v1, v4

    aget v3, v1, v5

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    if-lt v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_2

    :cond_1
    iput v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    goto :goto_1

    :cond_2
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_3
    iget-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v4, :cond_4

    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/android/launcher3/common/drag/DragManager;->drop(FF)V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeExtraDragSourceViewAndReorder()V
    .locals 12

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DragSource;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v9, v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v9, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/drag/DragManager;->countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I

    move-result v0

    goto :goto_1

    :cond_3
    sub-int v3, v2, v0

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v5, v10

    invoke-interface {v4, v6}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDragged(Ljava/util/ArrayList;)V

    instance-of v7, v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v7, :cond_0

    check-cast v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {v4, v7, v3, v2, v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public removeQuickOptionView()V
    .locals 1

    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    return-void
.end method

.method public removeQuickOptionView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeQuickOptionView(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/drag/DragManager;->getOriginDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    return-void
.end method

.method public removeQuickOptionViewWithoutSALogging()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    goto :goto_0
.end method

.method public resetLastGestureUpTime()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    return-void
.end method

.method public setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->setScrollZone()V

    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public setScrollZone()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->getScrollZone()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    :cond_0
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;
    .locals 55

    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getOutlineColor()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mWindowToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    move-object/from16 v0, v44

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v33, v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v34, v5, 0x2

    if-eqz p12, :cond_a

    move/from16 v7, v33

    :goto_1
    if-eqz p12, :cond_b

    move/from16 v8, v34

    :goto_2
    if-nez p8, :cond_c

    const/16 v31, 0x0

    :goto_3
    if-nez p8, :cond_d

    const/16 v32, 0x0

    :goto_4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    new-instance v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v5}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p12, :cond_e

    move/from16 v5, v33

    :goto_5
    iput v5, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p12, :cond_f

    move/from16 v5, v34

    :goto_6
    iput v5, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    new-instance v4, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object/from16 v6, p1

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v4, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/drag/DragView;->setDragOutline(Landroid/graphics/drawable/Drawable;)V

    if-eqz p7, :cond_3

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_3
    if-eqz p8, :cond_4

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_4
    if-eqz p12, :cond_5

    sub-int v5, v7, v33

    sub-int v6, v8, v34

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v5, :cond_19

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p5

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v5, :cond_6

    move-object/from16 v0, p5

    instance-of v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_19

    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    const/16 v40, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_7
    :goto_7
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    new-instance v29, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v29 .. v29}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppDragSource(I)Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v52, v0

    new-instance v46, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x6

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v18

    const/4 v5, 0x0

    aget v5, v52, v5

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v18

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v23

    const/4 v5, 0x1

    aget v5, v52, v5

    int-to-float v5, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v17

    int-to-float v10, v0

    mul-float v10, v10, v18

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v24

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v6, v16, v6

    int-to-float v6, v6

    div-float v19, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v19, v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v48, v0

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionLeft()I

    move-result v5

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v27, v5, v6

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionTop()I

    move-result v5

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v28, v5, v6

    const/16 v47, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_8

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v5, :cond_8

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v43

    invoke-interface {v5, v0}, Lcom/android/launcher3/common/drag/DragSource;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v51

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/launcher3/common/drag/DragSource;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    sub-int v5, v45, v51

    mul-int v47, v5, v53

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a015f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v41

    add-int/lit8 v40, v40, 0x1

    new-instance v9, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v5, v5, v23

    mul-int v6, v41, v40

    add-int v6, v6, v27

    add-int v6, v6, v48

    sub-int/2addr v5, v6

    add-int v12, v5, v47

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v5, v5, v24

    mul-int v6, v41, v40

    add-int v6, v6, v28

    add-int v6, v6, v48

    sub-int v13, v5, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v9 .. v20}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    move-object/from16 v0, v29

    iput-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    if-eqz p12, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v5, v5, v23

    add-int v5, v5, v47

    sub-int v5, v5, v33

    move v6, v5

    :goto_8
    if-eqz p12, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v5, v5, v24

    sub-int v5, v5, v34

    :goto_9
    invoke-virtual {v9, v6, v5}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/drag/DragView;->setTopDelta(I)V

    if-eqz p7, :cond_9

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v9, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_9
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v7, v5, p2

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v8, v5, p3

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    add-int v10, p2, v31

    sub-int/2addr v5, v10

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    add-int v10, p3, v32

    sub-int/2addr v5, v10

    goto/16 :goto_6

    :cond_10
    sub-int v5, p2, v23

    add-int v5, v5, v47

    move v6, v5

    goto :goto_8

    :cond_11
    sub-int v5, p3, v24

    goto :goto_9

    :cond_12
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v37

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v39

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    :goto_a
    if-ltz v42, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_13

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    invoke-virtual {v5, v6, v10}, Lcom/android/launcher3/common/drag/DragView;->show(II)V

    :cond_13
    add-int/lit8 v42, v42, -0x1

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher3/common/drag/DragSource;

    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v30, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    move-object/from16 v0, v50

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    move-object/from16 v0, v38

    instance-of v10, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v10, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I

    move-result v25

    goto :goto_c

    :cond_18
    sub-int v35, v30, v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v12

    move/from16 v49, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDragged(Ljava/util/ArrayList;)V

    move-object/from16 v0, v38

    instance-of v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v5, :cond_15

    check-cast v38, Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v38

    move/from16 v1, v35

    move/from16 v2, v30

    move/from16 v3, v49

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    goto/16 :goto_b

    :cond_19
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/drag/DragView;->show(II)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz p11, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/drag/DragManager;->createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v5, :cond_1c

    if-eqz p4, :cond_1c

    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1b

    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v12, v13}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/common/drag/DragManager$1;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragSource;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    :cond_1c
    :goto_d
    return-object v4

    :cond_1d
    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v12, 0x64

    invoke-virtual {v5, v12, v13}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/common/drag/DragManager$2;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragSource;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    goto :goto_d
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v14}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    if-eqz p9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    :goto_0
    if-eqz p9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    :goto_1
    const/4 v1, 0x0

    aget v1, v14, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    add-int/2addr v1, v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int v3, v1, v2

    const/4 v1, 0x1

    aget v1, v14, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int v4, v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;

    if-nez p6, :cond_0

    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    goto :goto_1
.end method
