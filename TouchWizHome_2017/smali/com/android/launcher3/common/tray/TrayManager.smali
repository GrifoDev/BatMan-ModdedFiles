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

.field private static final BLUR_VALID_DECIMAL_PLACE:I = 0x2

.field private static final DIRECTION_BOTTOM:I = 0x1

.field private static final DIRECTION_NONE:I = -0x1

.field private static final DIRECTION_TOP:I = 0x0

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_SUPPRESS_CHANGE_STAGE_ONCE:Ljava/lang/String; = "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

.field private static final TAG:Ljava/lang/String; = "TrayManager"

.field private static final TOUCH_IGNORE_TIME_FOR_TNOTIFICATION_PANEL:I = 0x12c

.field public static final TRANSITION_0_CLEAR_BORDER:I = 0x0

.field public static final TRANSITION_1_CLEAR_BORDER_WITH_SEARCHBAR:I = 0x1

.field public static final TRANSITION_2_HOME_APPS_FADE_IN_OUT:I = 0x2

.field public static final TRANSITION_3_HOME_APPS_SCALE_AND_FADE:I = 0x3

.field private static final TRANSITION_ADAPTIVE_BLUR:Z = true

.field private static final TRANSITION_BLUR_SLOP_COUNT:I = 0x6

.field public static final TRANSITION_LOOPING:Z = true

.field public static final TRANSITION_TYPE:I = 0x3

.field private static final UNSET_SUPPRESS_CHANGE_STAGE_DELAY:I = 0x190


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

.field private mMoveAndAnimated:Z

.field private mMoved:Z

.field private mNeedToShowLightingEffectLater:Z

.field private mOffset:F

.field private mShadowDarkBgColor:I

.field private mShadowHeight:I

.field private mShadowView:Landroid/view/View;

.field private mStartOffsetY:F

.field private mSuppressChangeStage:Z

.field private mSwipeDistanceRatio:F

.field private mTouchSlop:I

.field private mTouchStartIndex:I

.field private mTouchUpVelocity:F

.field private mTouching:Z

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

.field private mTraySlipYForNotificationPanel:I

.field private mUndergroundBgBlur:F

.field private final mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private final mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$1;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$2;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewTranslationListener:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$3;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    new-instance v0, Lcom/android/launcher3/common/tray/FakeViewAnimation;

    invoke-direct {v0}, Lcom/android/launcher3/common/tray/FakeViewAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/tray/TrayManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/tray/TrayManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/tray/TrayManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/tray/TrayManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/tray/TrayManager;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/tray/TrayManager;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/common/tray/TrayManager;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
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

    move-result-object v1

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

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

.method private getScreenDivisionSection(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/event/ScreenDivision;->getNumOfSection(FF)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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

.method private handleWallpaperBlur(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v9

    if-eqz p2, :cond_0

    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isOverBlurSlop(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    int-to-float v2, v9

    div-float v10, p1, v2

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

    mul-float/2addr v2, v10

    const/4 v4, 0x2

    const/4 v6, 0x2

    invoke-static {v2, v4, v6}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    move-result v5

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_1

    float-to-double v6, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

    float-to-double v12, v2

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v12, v14

    cmpl-double v2, v6, v12

    if-gtz v2, :cond_1

    if-eqz v8, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v3, :cond_6

    const-wide/16 v6, 0x0

    :goto_3
    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->requestBlurChange(ZLandroid/view/Window;FJ)V

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    move/from16 v0, p1

    neg-float v2, v0

    int-to-float v4, v9

    div-float v10, v2, v4

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0x64

    goto :goto_3
.end method

.method private loggingDirection(II)V
    .locals 10

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v8

    iget-object v1, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move v3, v7

    :goto_0
    add-int/2addr v6, v2

    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v8

    if-nez v8, :cond_1

    if-ne p2, v7, :cond_6

    :cond_1
    if-eqz v3, :cond_5

    const v7, 0x7f0901ac

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_1
    packed-switch p1, :pswitch_data_0

    const v7, 0x7f09010c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v5, v0, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const v7, 0x7f0901ad

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const/4 v7, 0x4

    if-ne p2, v7, :cond_2

    if-eqz v3, :cond_7

    const v7, 0x7f0901a5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    goto :goto_1

    :cond_7
    const v7, 0x7f0901a6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :pswitch_0
    const v7, 0x7f09010d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    const v7, 0x7f09010b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

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
    .locals 7

    :try_start_0
    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float v3, v4, p4

    invoke-direct {p0}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveStart()V

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    iput v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v2

    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v4, "TrayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activePointerIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

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

.method private trayMoveStart()V
    .locals 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x4

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

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

.method private trayTouchUp(Z)V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

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

.method private willMove(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-interface {p2}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isVerticalScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isMovingOnBlock()Z

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
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayBgBlurAmount()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

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

.method public calculateDuration(FI)I
    .locals 7

    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return p2

    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    const v6, 0x44bb8000    # 1500.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public changeStageWithDrag(Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 5

    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne v3, v4, :cond_2

    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v1

    :goto_1
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void

    :cond_2
    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getHeightOfTrayForDrag()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    return v0
.end method

.method public getTrayMovingDistance()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

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

.method public isMoveAndAnimated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    return v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    return v0
.end method

.method public isTouching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

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

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->handleWallpaperBlur(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/tray/FakeView;->setDescriptionHeight(I)V

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

    const/4 v1, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v0, :cond_0

    :goto_0
    return v12

    :cond_0
    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    if-nez v8, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v0, :cond_4

    :cond_2
    move v0, v12

    :goto_2
    move v12, v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    if-eqz p1, :cond_1

    invoke-direct {p0, v7, p1}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->startTrayMove()V

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    const/4 v8, 0x1

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v9

    sub-float v3, v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v9

    sub-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/tray/TrayManager;->prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FFI)V

    iput-boolean v12, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/android/launcher3/util/DvfsUtil;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/DvfsUtil;->boostUpForSupportedModel()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    iput-boolean v11, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iput v11, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    invoke-virtual {p2, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onSwipeBlockListener(FF)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/tray/TrayManager;->getScreenDivisionSection(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchStartIndex:I

    goto/16 :goto_1

    :pswitch_3
    iput-boolean v11, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    iput v11, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_1

    :cond_4
    move v0, v11

    goto/16 :goto_2

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
    .locals 32

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    sub-float v27, v27, v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    sub-float v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/tray/TrayManager;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    mul-float v28, v28, v26

    sub-float v16, v27, v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    mul-float v28, v28, v26

    sub-float v17, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v27, 0x1

    return v27

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    goto :goto_0

    :pswitch_2
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    add-float v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    add-float v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v28, v0

    sub-float v21, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    move/from16 v27, v0

    mul-float v21, v21, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    move/from16 v27, v0

    add-float v14, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    const/4 v10, 0x0

    const/16 v19, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v27

    if-eqz v27, :cond_1

    sget-object v27, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v27, v0

    if-lez v27, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v27

    if-eqz v27, :cond_7

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v30

    sub-long v22, v28, v30

    const-wide/16 v28, 0x12c

    cmp-long v27, v22, v28

    if-gez v27, :cond_6

    const/16 v27, 0x0

    move/from16 v0, v27

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v19, 0x1

    :cond_1
    :goto_1
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v27, v14, v27

    if-gez v27, :cond_2

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v14, v27

    move/from16 v0, v27

    float-to-int v10, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v14, v0

    :cond_2
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v14, v27

    if-lez v27, :cond_3

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v14, v27

    move/from16 v0, v27

    float-to-int v10, v0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v14, v0

    :cond_3
    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v27, v0

    int-to-float v0, v10

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isMovingOnBlock()Z

    move-result v27

    if-nez v27, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    :cond_5
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move/from16 v27, v0

    sub-float v27, v14, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_1

    const-wide/16 v28, 0x12c

    sub-long v12, v22, v28

    long-to-float v0, v12

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto/16 :goto_1

    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v19, 0x1

    goto/16 :goto_1

    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isMovingOnBlock()Z

    move-result v27

    if-nez v27, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    const/4 v7, 0x0

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v27

    if-eqz v27, :cond_f

    sget-object v27, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v27, v0

    if-lez v27, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v30

    sub-long v22, v28, v30

    const/16 v27, 0x0

    cmpl-float v27, v25, v27

    if-gtz v27, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    div-int/lit8 v28, v28, 0x3

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_d

    :cond_8
    const/4 v9, 0x1

    :goto_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v27

    if-eqz v27, :cond_9

    const-wide/16 v28, 0x12c

    cmp-long v27, v22, v28

    if-gez v27, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move/from16 v28, v0

    cmpg-float v27, v27, v28

    if-gez v27, :cond_e

    const/16 v27, 0x1

    :goto_3
    or-int v9, v9, v27

    :cond_a
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/launcher3/Utilities;->expandNotificationsPanel(Landroid/content/Context;)V

    :cond_b
    const-string v27, "TrayManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " : v = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", expand = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/common/tray/TrayManager;->trayTouchUp(Z)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    :goto_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v27, 0x0

    goto :goto_3

    :cond_f
    const v4, 0x3e4ccccd    # 0.2f

    const/16 v27, 0x0

    cmpl-float v27, v24, v27

    if-eqz v27, :cond_13

    div-float v20, v25, v24

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)Z

    move-result v27

    if-eqz v27, :cond_14

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isScrollLocked()Z

    move-result v27

    if-nez v27, :cond_14

    const/16 v18, 0x1

    :goto_7
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const v28, 0x3e4ccccd    # 0.2f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_10

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager;->determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z

    move-result v27

    if-nez v27, :cond_11

    :cond_10
    if-eqz v18, :cond_15

    :cond_11
    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_12

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/tray/TrayManager;->getScreenDivisionSection(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)I

    move-result v8

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v27

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchStartIndex:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertGesturePointOnTrayChange(III)V

    :cond_12
    const-string v27, "TrayManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " : v = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", threshold = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", scroll = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_13
    move/from16 v20, v25

    goto/16 :goto_6

    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_15
    const/4 v7, 0x0

    goto :goto_8

    :cond_16
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->trayTouchUp(Z)V

    goto/16 :goto_5

    :pswitch_4
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    nop

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
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    move v3, v6

    :goto_0
    sget-object v8, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v5, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    const-string v2, ""

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09019a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v8, v7, v6}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v7, v7}, Lcom/android/launcher3/common/tray/FakeView;->measure(II)V

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/tray/FakeView;->getMeasuredHeight()I

    move-result v0

    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    sub-int v8, p2, v0

    invoke-direct {p0, v7, v8, v6}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    :cond_1
    iget-boolean v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    if-eqz v7, :cond_5

    iput-boolean v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_2
    return-void

    :cond_3
    move v3, v7

    goto/16 :goto_0

    :cond_4
    sget-object v5, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    sget-object v7, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-virtual {v7, v6, v8, v6}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    goto :goto_2
.end method

.method public releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 4

    const/4 v3, 0x0

    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

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

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->trayTouchUp(Z)V

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
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    goto :goto_1
.end method

.method public setDisallowCallBacksVisibity(Z)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    :cond_0
    return-void
.end method

.method public setSuppressChangeStageOnce()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "TrayManager"

    const-string v1, "setSuppressChangeStageOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    iput-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    iput-boolean v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

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
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

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

    const v6, 0x7f1100b7

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    const v6, 0x7f1100b9

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v6, 0x7f040057

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

    const v6, 0x7f040056

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    const v6, 0x7f0a00c8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    const v6, 0x7f0a0195

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    iget v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    const v6, 0x7f0d0036

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    const v6, 0x7f1100bc

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mHightlightView:Landroid/view/View;

    const v6, 0x7f1100bb

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowView:Landroid/view/View;

    const v6, 0x7f0a0196

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mHighlightHeight:I

    const v6, 0x7f0a019a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowHeight:I

    const v6, 0x7f0e0037

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowDarkBgColor:I

    const/4 v6, 0x0

    invoke-direct {p0, v6, v4}, Lcom/android/launcher3/common/tray/TrayManager;->handleHighlightAndShadow(FI)V

    iput v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    const v6, 0x7f0a019c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    const v6, 0x7f10000c

    invoke-virtual {v3, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    div-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    :cond_0
    return-void
.end method

.method public trayMoveEnd(I)V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x5

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

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
