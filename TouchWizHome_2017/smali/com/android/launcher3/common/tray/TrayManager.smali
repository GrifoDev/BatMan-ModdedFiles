.class public Lcom/android/launcher3/common/tray/TrayManager;
.super Ljava/lang/Object;
.source "TrayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;,
        Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;,
        Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    }
.end annotation


# static fields
.field private static final BLUR_INTERVAL:I = 0x2

.field private static final BLUR_MAX_AMOUNT:F = 0.3f

.field private static final BLUR_VALID_DECIMAL_PLACE:I = 0x2

.field public static final DIRECTION_BOTTOM:I = 0x1

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_TOP:I = 0x0

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_SUPPRESS_CHANGE_STAGE_ONCE:Ljava/lang/String; = "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

.field private static final TAG:Ljava/lang/String; = "TrayManager"

.field public static final TRANSITION_0_CLEAR_BORDER:I = 0x0

.field public static final TRANSITION_1_CLEAR_BORDER_WITH_SEARCHBAR:I = 0x1

.field public static final TRANSITION_2_HOME_APPS_FADE_IN_OUT:I = 0x2

.field public static final TRANSITION_3_HOME_APPS_SCALE_AND_FADE:I = 0x3

.field public static final TRANSITION_ADAPTIVE_BLUR:Z = true

.field public static final TRANSITION_LOOPING:Z = true

.field public static final TRANSITION_TYPE:I = 0x3


# instance fields
.field private mActivePointerId:I

.field private mCurrentChangedOffsetY:F

.field private mDirection:I

.field private mDisallowCallBacksVisibity:Z

.field private mDragManager:Lcom/android/launcher3/common/drag/DragManager;

.field private mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

.field private mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

.field private mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

.field private mFakeViewAnimationTime:I

.field private mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

.field private mFakeViewExtraMoveRange:I

.field private mFakeViewHeightToShow:I

.field private mFakeViewMaxHeight:I

.field private mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

.field private mFakeViewTranslationListener:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

.field private mFirstDownY:F

.field private mFlingThresholdVelocity:I

.field private mHighlightHeight:I

.field private mHightlightView:Landroid/view/View;

.field private mIsRunningSwipeAnimation:Z

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaximumVelocity:I

.field private mMoved:Z

.field private mOffset:F

.field private mShadowDarkBgColor:I

.field private mShadowHeight:I

.field private mShadowView:Landroid/view/View;

.field private mStartOffsetY:F

.field private mStartPoint:Landroid/graphics/Point;

.field private mSwipeDistanceRatio:F

.field private mTouchSlop:I

.field private mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

.field private mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

.field private mTrayBorderTopLimit:I

.field private mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrayHeight:I

.field private mTraySlipY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$1;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewTranslationListener:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$2;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    new-instance v0, Lcom/android/launcher3/common/tray/FakeViewAnimation;

    invoke-direct {v0}, Lcom/android/launcher3/common/tray/FakeViewAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/tray/TrayManager;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/tray/TrayManager;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animateFakeView(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->animate(Landroid/view/View;IZI)V

    return-void
.end method

.method private cancelFakeViewAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->cancel(Landroid/view/View;)V

    return-void
.end method

.method private changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne p1, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->loggingDirection(II)V

    :cond_0
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->prepareFakeViewOnChangeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    :cond_2
    return-void
.end method

.method private determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z
    .locals 6

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->determineStageChange(IFFFI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-lez p2, :cond_0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-gez p2, :cond_2

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleFakeViews(FI)V
    .locals 6

    const/16 v5, 0x8

    int-to-float v3, p2

    add-float v0, p1, v3

    int-to-float v3, p2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    int-to-float v0, p2

    :cond_0
    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    sub-int v1, p2, v3

    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    sub-int v2, p2, v3

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    int-to-float v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->cancelFakeViewAnimation(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/tray/FakeView;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->cancelFakeViewAnimation(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/tray/FakeView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private handleHighlightAndShadow(FI)V
    .locals 0

    return-void
.end method

.method private handleWallpaperBlur(F)V
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v1

    cmpl-float v3, p1, v5

    if-ltz v3, :cond_1

    int-to-float v3, v1

    div-float v2, p1, v3

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v2

    invoke-static {v3, v6, v6}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    move-result v0

    cmpl-float v3, v2, v5

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v0, v6, v7}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    :cond_0
    return-void

    :cond_1
    neg-float v3, p1

    int-to-float v4, v1

    div-float v2, v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loggingDirection(II)V
    .locals 13

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ""

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    move v9, v4

    :goto_0
    add-int/2addr v11, v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p2, v4, :cond_7

    :cond_3
    if-eqz v9, :cond_6

    const v1, 0x7f070182

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_2
    packed-switch p1, :pswitch_data_0

    const v1, 0x7f0700e2

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    int-to-long v4, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const v1, 0x7f070183

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    if-eqz v9, :cond_8

    const v1, 0x7f07017b

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    goto :goto_2

    :cond_8
    const v1, 0x7f07017c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :pswitch_0
    const v1, 0x7f0700e3

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_1
    const v1, 0x7f0700e1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v5, v9, 0x8

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-ne v4, v9, :cond_0

    if-nez v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v8

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v6, v9, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v7, v9, v10

    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v10, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    sub-float v0, v9, v10

    add-float v9, v2, v6

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    add-float v9, v3, v7

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float/2addr v9, v0

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    iget-object v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private prepareFakeViewOnChangeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V
    .locals 3

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iput-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    iget v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int v0, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationY(F)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iput-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    neg-int v0, v1

    goto :goto_0
.end method

.method private prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FFI)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float v4, v6, p3

    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-float v5, v6, p4

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(F)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v6, v5, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    iput v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    sget-object v6, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    invoke-direct {p0, v3, v6}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v2

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    :cond_0
    :goto_0
    iput v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v6, "TrayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activePointerIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setTrayTranslationY(F)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trayMoveEnd(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateOvergroundTrayByDragViewPosition(FII)V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v4, :cond_0

    int-to-float v4, p2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    if-le p2, p3, :cond_0

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    neg-int v1, v4

    int-to-float v4, p2

    sub-float/2addr v4, p1

    sub-int v5, p2, p3

    int-to-float v5, v5

    div-float v0, v4, v5

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v3, v4, v5

    int-to-float v4, v1

    add-float v2, v4, v3

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updateUndergroundTrayByDragViewPosition(FII)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int v1, v6, v7

    int-to-float v6, p2

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    if-ge p2, p3, :cond_1

    int-to-float v6, p2

    sub-float v6, p1, v6

    sub-int v7, p3, p2

    int-to-float v7, v7

    div-float v0, v6, v7

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v8, v0, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v4, v6, v7

    sub-float v5, v9, v4

    int-to-float v6, v1

    sub-float v2, v6, v4

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationY(F)V

    invoke-direct {p0, v5}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    invoke-direct {p0, v9}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method private willMove(F)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isVerticalScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

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


# virtual methods
.method public addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public approachBorderOnDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;F)V
    .locals 3

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingStartPoint()I

    move-result v1

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingEndPoint()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->updateUndergroundTrayByDragViewPosition(FII)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingStartPoint()I

    move-result v1

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingEndPoint()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->updateOvergroundTrayByDragViewPosition(FII)V

    goto :goto_0
.end method

.method public changeStageWithDrag(Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 4

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    :cond_1
    :goto_0
    const/4 v2, -0x1

    invoke-interface {p1}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void

    :cond_2
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    goto :goto_0
.end method

.method public getHeightOfTrayForDrag()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    return v0
.end method

.method public getTrayMovingRange()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    return v0
.end method

.method public onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V
    .locals 8

    const/4 v7, 0x0

    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput p3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    int-to-float v6, p3

    add-float v1, p2, v6

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/common/tray/FakeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    float-to-int v6, v1

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayBorderTopLimit:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setVisibility(I)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getTranslationY()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    sub-int v6, p3, v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getTranslationY()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_3
    int-to-float v6, p3

    sub-float v0, v1, v6

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_4

    new-instance v5, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    iget-boolean v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    iput-boolean v6, v5, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mDisallowVisible:Z

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v2, v5}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/common/tray/TrayManager;->handleHighlightAndShadow(FI)V

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/common/tray/TrayManager;->handleFakeViews(FI)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/tray/TrayManager;->handleWallpaperBlur(F)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v9, 0x0

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    if-nez v9, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    if-eqz p1, :cond_1

    invoke-direct {p0, v8}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->startTrayMove()V

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    const/4 v9, 0x1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v10

    sub-float v3, v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v10

    sub-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/tray/TrayManager;->prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FFI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onSwipeBlockListener(FF)V

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartPoint:Landroid/graphics/Point;

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher3/common/tray/TrayManager;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    mul-float v16, v16, v14

    sub-float v9, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    mul-float v16, v16, v14

    sub-float v10, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v15, 0x1

    return v15

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    const/4 v15, -0x1

    if-eq v3, v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    add-float/2addr v15, v9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    add-float/2addr v15, v10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v16, v0

    sub-float v12, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    mul-float/2addr v12, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    add-float v7, v15, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    if-lez v15, :cond_3

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v6

    iget v15, v6, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    cmpg-float v15, v7, v15

    if-gez v15, :cond_1

    iget v15, v6, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v7, v15

    float-to-int v5, v15

    iget v15, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v15

    :cond_1
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    cmpl-float v15, v7, v15

    if-lez v15, :cond_2

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float v15, v7, v15

    float-to-int v5, v15

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v15

    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v15, :cond_a

    const/4 v4, 0x0

    const/4 v15, -0x1

    if-eq v3, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    float-to-int v13, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(F)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isLocked()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/android/launcher3/common/tray/TrayManager;->determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v11, :cond_9

    :cond_5
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mStartPoint:Landroid/graphics/Point;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Lcom/android/launcher3/util/logging/SALogging;->insertGesturePointOnTrayChange(ILandroid/graphics/Point;II)V

    :cond_6
    const-string v15, "TrayManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : v = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", threshold = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", scroll = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(Z)V

    goto :goto_3

    :pswitch_4
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    sget-object v5, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    const-string v2, ""

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07016d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v5, v7, v8}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v7, v7}, Lcom/android/launcher3/common/tray/FakeView;->measure(II)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/FakeView;->getMeasuredHeight()I

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    sub-int v6, p2, v0

    invoke-direct {p0, v5, v6, v8}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    :cond_1
    sget-object v5, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v7

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_2
    return-void

    :cond_3
    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    goto/16 :goto_0
.end method

.method public releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 4

    const/4 v3, 0x0

    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v0, v3, v3}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_0
    return-void
.end method

.method public removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetMoving()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(Z)V

    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayBorderTopLimit:I

    if-lez v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayBorderTopLimit:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method public setBottomViewDragEnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    goto :goto_0
.end method

.method public setDisallowCallBacksVisibity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    return-void
.end method

.method public setSuppressChangeStageOnce()V
    .locals 2

    const-string v0, "TrayManager"

    const-string v1, "setSuppressChangeStageOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStageOnce()V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStageOnce()V

    return-void
.end method

.method public setSwipeAnimationStatus(ZFJ)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    cmpl-float v2, p2, v1

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v0, :cond_0

    const v1, 0x3e99999a    # 0.3f

    :cond_0
    invoke-static {v0, v2, v1, p3, p4}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/tray/TrayManager;->setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/Launcher;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43fa0000    # 500.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    const v6, 0x7f0e0096

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    const v6, 0x7f0e0098

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v6, 0x7f030041

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    const v6, 0x7f030040

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    const v6, 0x7f08013e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    const v6, 0x7f08013d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    iget v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    const v6, 0x7f0a0028

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    const v6, 0x7f0e009b

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mHightlightView:Landroid/view/View;

    const v6, 0x7f0e009a

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowView:Landroid/view/View;

    const v6, 0x7f08013f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mHighlightHeight:I

    const v6, 0x7f080143

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowHeight:I

    const v6, 0x7f0c002b

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowDarkBgColor:I

    const/4 v6, 0x0

    invoke-direct {p0, v6, v4}, Lcom/android/launcher3/common/tray/TrayManager;->handleHighlightAndShadow(FI)V

    const v6, 0x7f080145

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    const v6, 0x7f0d000a

    invoke-virtual {v3, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    return-void
.end method
