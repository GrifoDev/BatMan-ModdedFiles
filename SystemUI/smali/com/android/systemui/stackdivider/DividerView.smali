.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;,
        Lcom/android/systemui/stackdivider/DividerView$GuideView;,
        Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;,
        Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;
    }
.end annotation


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private adjStartPosition:Z

.field private dualAppBadge:Landroid/graphics/drawable/Drawable;

.field private mAdjustedForIme:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAutoResizeSnapTarget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDimming:Z

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDissmissEnd:Z

.field private mDividerFlag:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mDockedTopTaskEvent:Z

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFirstSplitTargetPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private mFocusedStackId:I

.field private mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowRecents:Z

.field private mGuideHeight:I

.field private final mGuideRect:Landroid/graphics/Rect;

.field private mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHasAutoResizingSnapTarget:Z

.field private mIgnoreAutoResize:Z

.field private mIsRotate:Z

.field private mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

.field private mLastOrientation:I

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLastSplitTargetPosition:I

.field private mLiftBackgroundScale:F

.field private mLongPressEntraceAnimDuration:I

.field private final mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mMaxAutoResizePos:I

.field private mMaximizeAnimationRunning:Z

.field private mMaximizeGuideView:Z

.field private mMinAutoResizePos:I

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private mPosBeforeAdjustedForIme:I

.field private mResetAutoResizeAfterAnim:Z

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapGuideVisible:Z

.field mSnapModeRunning:Z

.field private mSnapWindowDismissToast:Landroid/widget/Toast;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private mSure:Z

.field private final mTaskRectBeforeAutoResize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInt2:[I

.field private mToggleSplitScreen:Z

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUserId:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private personaBadge:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/DividerView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotate:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->completeToggleSplitScreen()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/DividerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->playTouchSound()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotate:Z

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotate:Z

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotate:Z

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotate:Z

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method private EnterFreeformTask()V
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->enterFreeformTask(I)V

    :cond_1
    return-void
.end method

.method private adjustFocusForClose(Z)I
    .locals 5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_4

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v5, p5

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    cmpl-float v7, v1, v9

    if-lez v7, :cond_2

    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    int-to-float v7, v5

    iget v8, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v7, :cond_0

    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_1

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :pswitch_0
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_2
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_3
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 3

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculateXPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private closeTask()V
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->setIgnoreAutoResize(Z)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackId()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeFocusedStackByDivider(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SPAC"

    const-string/jumbo v5, "Close"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    invoke-interface {v1}, Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;->work()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    return-void

    :cond_1
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_0
.end method

.method private completeToggleSplitScreen()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->completeToggleSplitScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    :cond_0
    return-void
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private dismissAutoResize(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$10;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static dockSideBottomRight(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawDualAppBadge(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-direct {p0, v6}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v7, v1, 0x2

    sub-int v7, v4, v7

    sub-int v8, v2, v0

    sub-int v9, v4, v1

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    sub-int v7, v4, v1

    mul-int/lit8 v8, v0, 0x2

    sub-int v8, v2, v8

    sub-int v9, v2, v0

    invoke-virtual {v6, v7, v8, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private drawGuideView(II)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    if-eqz v5, :cond_6

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_7

    move v6, v7

    :goto_2
    iput v6, v8, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    :goto_3
    iput p2, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_9

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    :goto_4
    iput v6, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_a

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v6, v8

    :goto_5
    iput v6, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->show(Landroid/graphics/Rect;)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f040053

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v1, v9, :cond_4

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v8, 0x2

    invoke-virtual {p0, p2, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_7
    new-instance v6, Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8, v2}, Lcom/android/systemui/stackdivider/DividerView$GuideView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v8, v1, v0, v9}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setFocusedZone(Lcom/android/systemui/stackdivider/FocusedFrameView;ILandroid/graphics/Rect;I)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDividerView(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_6

    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v8, 0x4

    invoke-virtual {p0, p2, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v9, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_8

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_7
    sub-int v6, p1, v4

    goto/16 :goto_2

    :cond_8
    move p2, v7

    goto/16 :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v6, v8

    goto/16 :goto_4

    :cond_a
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    goto/16 :goto_5
.end method

.method private drawGuideViewDimLayer(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    goto :goto_0
.end method

.method private drawKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v14, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    :goto_1
    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotate:Z

    if-nez v2, :cond_7

    div-int/lit8 v2, v15, 0x2

    if-ge v2, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    sub-int v3, v10, v3

    div-int/lit8 v4, v15, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    sub-int/2addr v3, v9

    sub-int v4, v10, v8

    div-int/lit8 v5, v15, 0x2

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v15, 0x2

    if-ge v2, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    div-int/lit8 v4, v15, 0x2

    sub-int v4, v10, v4

    invoke-virtual {v2, v3, v4, v15, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    sub-int v4, v10, v8

    div-int/lit8 v5, v15, 0x2

    add-int/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    :cond_9
    div-int/lit8 v2, v10, 0x2

    if-ge v2, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v10, 0x2

    sub-int v3, v15, v3

    div-int/lit8 v4, v10, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    sub-int v3, v15, v9

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v4, v8

    div-int/lit8 v5, v10, 0x2

    invoke-virtual {v2, v3, v4, v15, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_1
    if-gtz v3, :cond_1

    move v3, v4

    :cond_1
    if-gtz v2, :cond_2

    move v2, v4

    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_1
.end method

.method private fling(IFZZ)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_1
    iget v2, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->setIgnoreAutoResize(Z)V

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DOOF"

    const-string/jumbo v4, "DividerDragging"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge v2, p1, :cond_4

    :cond_3
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v3, p1

    iget v4, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v2, p1, p1, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, p1, p1, v2}, Lcom/android/systemui/stackdivider/DividerView;->forceResizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    goto :goto_0
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private flingToAutoResizeSnapTarget(IZ)V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getDividerButtonsTarget()I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_1
    const/4 v4, 0x3

    if-ne v4, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-ne v0, v1, :cond_3

    :goto_1
    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v3, v6, :cond_3

    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    :goto_1
    new-array v3, v6, [I

    aput p1, v3, v4

    iget v4, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$5;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$6;

    invoke-direct {v3, p0, p3, p4, v1}, Lcom/android/systemui/stackdivider/DividerView$6;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    goto :goto_1
.end method

.method private getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "knox_name"

    invoke-static {v9, v10, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v11}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    :cond_0
    if-eqz v8, :cond_4

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getECBadge(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    array-length v10, v1

    invoke-static {v1, v11, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v2

    :cond_2
    if-eqz v5, :cond_4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v9, "ic_sf_badge_bottom"

    const-string/jumbo v10, "drawable"

    invoke-virtual {v6, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10804bb

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10803e6

    invoke-virtual {v9, v10, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v11}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private initAutoResizingTargets(II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_0
    const/4 v1, 0x0

    if-ne p1, v6, :cond_4

    if-ge p2, v3, :cond_3

    const/4 v1, 0x1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    sub-int v3, v0, p2

    :cond_1
    if-ne p1, v6, :cond_6

    const/4 v2, 0x1

    :goto_2
    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v4, p2, p2, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v4, v3, v3, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    if-ge v3, p2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    goto :goto_2
.end method

.method private initializeSnapAlgorithm()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_0
    return-void
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private liftBackground()V
    .locals 6

    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->liftFocusedFrameView(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6

    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_4
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_8
    move v2, v0

    goto :goto_4
.end method

.method private playTouchSound()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private registerKnoxBadgeReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseBackground()V
    .locals 6

    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->releaseFocusedFrameView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private resetBackground()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    return p1
.end method

.method private scrollGuideView(ZII)V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v1, p3

    :goto_0
    if-eqz p1, :cond_5

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v1, v4, :cond_4

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v2, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :cond_1
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    aput v2, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xe9

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$9;

    invoke-direct {v5, p0, v0, p2, p3}, Lcom/android/systemui/stackdivider/DividerView$9;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZII)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    return-void

    :cond_3
    move v1, p2

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v1, v4, :cond_1

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v2, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-le v1, v4, :cond_6

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v3, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-ge v1, v4, :cond_1

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    if-le v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v3, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    goto :goto_1
.end method

.method private setBackgroundFraction()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float v2, v0, v1

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    return-void
.end method

.method private setTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private stopDragging()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    return-void
.end method

.method private unregisterKnoxBadgeReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    return-void
.end method

.method private updateDockSide()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$1(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetAutoResizeAfterAnim:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$2()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v3, v0

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method public animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z
    .locals 12

    const-wide/16 v4, 0x14d

    const/4 v11, 0x1

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    move v1, v11

    :goto_0
    if-ne v6, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v10}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    move-object v1, p0

    move-wide v6, v4

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return v11

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    goto :goto_1
.end method

.method public calculateAutoResizablePosition(Landroid/graphics/Rect;I)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p2, v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinAutoResizePos:I

    if-ge v1, v2, :cond_b

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinAutoResizePos:I

    :cond_3
    :goto_2
    return v1

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_0

    :cond_5
    if-ne p2, v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v1, v2, v3

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne p2, v5, :cond_8

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eq p2, v4, :cond_7

    :cond_9
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-eqz v2, :cond_a

    if-ne p2, v4, :cond_a

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v1, v2, v3

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, v5, :cond_2

    goto :goto_3

    :cond_b
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaxAutoResizePos:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaxAutoResizePos:I

    goto :goto_2
.end method

.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method public checkDividerFlag(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public clearAutoResizeState()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    return-void
.end method

.method public dismissDockStack(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$7;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawDualAppBadge(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawDualAppBadge(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public flingToFocusedStackSnapTarget(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->flingToAutoResizeSnapTarget(IZ)V

    return-void
.end method

.method public flingToNewFocusedStackSnapTarget(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->initAutoResizingTargets(II)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->flingToAutoResizeSnapTarget(IZ)V

    return-void
.end method

.method public forceResizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resetTmpRects()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    :cond_1
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method getFocusedStackRect(ILandroid/graphics/Rect;)V
    .locals 4

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    return v0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public hasSameAutoResizePosition(II)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public haveExcessOrUnfilledArea(ILandroid/graphics/Rect;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    return v3

    :cond_2
    if-ne p1, v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    if-eq v4, v5, :cond_4

    :goto_1
    return v2

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    if-eq v4, v5, :cond_6

    :goto_2
    return v2

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method hideGuideView(Landroid/graphics/Point;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->cancelAnimation()V

    goto :goto_0
.end method

.method public initTaskBounds(ILandroid/graphics/Rect;)V
    .locals 3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->setTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateAutoResizablePosition(Landroid/graphics/Rect;I)I

    move-result v0

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public initTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->setTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    return-void
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalDivision()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    return v0
.end method

.method public needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDockSideChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_1

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    iget v0, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->forceResizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->dismissAutoResize(J)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->setIgnoreAutoResize(Z)V

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DOOF"

    const-string/jumbo v4, "RecentsLong"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v5, p1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v7, v3, v5}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0, v8, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    if-nez v4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {p0, v8, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    const/4 v5, 0x3

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    goto :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    :pswitch_3
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    :pswitch_4
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getLastDimLayerTargetStack()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->unregisterKnoxBadgeReceiver()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    const/4 v6, 0x2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v3, 0x7f1301cd

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const v3, 0x7f1301ca

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const v3, 0x7f1301cb

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0346

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    new-instance v3, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v1, :cond_2

    const/16 v3, 0x3f6

    :goto_1
    invoke-static {v5, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapWindowDismissToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_3
    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinAutoResizePos:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_4
    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaxAutoResizePos:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v3, 0x7f1301cc

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/FocusedFrameView;->initialize(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/stackdivider/DividerHandleView;->mRecentVisible:Z

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->isSnapWindowRunning()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->setBackgroundFraction()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x3f7

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto/16 :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v3

    goto/16 :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v4

    sub-int/2addr v3, v4

    goto/16 :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int v5, v1, v3

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->updateLayout()V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_4
    sub-int v1, v4, v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v3

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_5
    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    goto :goto_5
.end method

.method onMultiWindowAppTransitionFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->onMultiWindowAppTransitionFinished()V

    return-void
.end method

.method onMultiWindowFocusedStackChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackId:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setFocusedStack(I)V

    return-void
.end method

.method onMultiWindowSettingChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v0

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/stackdivider/DividerView$8;-><init>(Lcom/android/systemui/stackdivider/DividerView;I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    return v17

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    const/16 v17, 0x1

    return v17

    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    return v10

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x32

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    :goto_3
    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    sget-boolean v17, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    move/from16 v17, v0

    sub-int v17, v17, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x32

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    goto/16 :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v8, v16

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    move/from16 v17, v0

    if-nez v17, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_10

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15, v8}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(ZII)V

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideViewDimLayer(I)V

    goto/16 :goto_0

    :cond_e
    move v8, v15

    goto :goto_5

    :cond_f
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(ZII)V

    goto :goto_6

    :cond_10
    move v13, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_19

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(ZII)V

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    :goto_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto/16 :goto_6

    :cond_17
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15, v8}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(ZII)V

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    goto :goto_9

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_9

    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v8, v1}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_9

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v8

    sget-boolean v17, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    move/from16 v17, v0

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0005

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    const/4 v9, 0x1

    :cond_1c
    :goto_a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v17

    new-instance v18, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZI)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1d
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    move/from16 v17, v0

    if-eqz v17, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_22

    move/from16 v8, v16

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    move/from16 v17, v0

    if-nez v17, :cond_2a

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_25

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    :cond_1f
    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_26

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mFirstSplitTargetPosition:I

    :cond_20
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_28

    new-instance v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    invoke-direct {v0, v15, v8}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v7, :cond_27

    const/16 v17, 0x0

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    :goto_f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    sget-boolean v17, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_1c

    const/4 v9, 0x2

    goto/16 :goto_a

    :cond_22
    move v8, v15

    goto/16 :goto_b

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v8

    goto/16 :goto_b

    :cond_24
    const/4 v7, 0x0

    goto :goto_c

    :cond_25
    const/4 v7, 0x0

    goto :goto_c

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_20

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastSplitTargetPosition:I

    goto :goto_d

    :cond_27
    const/16 v17, 0x1

    goto :goto_e

    :cond_28
    new-instance v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v8, v1}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v7, :cond_29

    const/16 v17, 0x0

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_f

    :cond_29
    const/16 v17, 0x1

    goto :goto_10

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v11

    :cond_2b
    :goto_11
    iget v12, v11, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v17

    if-eqz v17, :cond_2d

    invoke-virtual {v5, v15, v12}, Landroid/graphics/Point;->set(II)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_2e

    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/android/systemui/stackdivider/DividerView$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v5}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_13
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto/16 :goto_f

    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v11

    goto :goto_11

    :cond_2d
    move/from16 v0, v16

    invoke-virtual {v5, v12, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_12

    :cond_2e
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    if-ge v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_8

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    if-eqz v3, :cond_11

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_9

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    if-eqz v3, :cond_d

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    const/16 v23, 0x1

    :goto_4
    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_a
    const/16 v23, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    goto :goto_6

    :cond_d
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mTaskRectBeforeAutoResize:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/stackdivider/DividerView;->setTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/stackdivider/DividerView;->setTaskRectBeforeAutoResize(ILandroid/graphics/Rect;)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    move/from16 v0, v22

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    :goto_a
    return-void

    :cond_12
    const/4 v3, 0x0

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    goto :goto_a
.end method

.method public setAdjustedForIme(Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_2
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mPosBeforeAdjustedForIme:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_1
.end method

.method public setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    :cond_3
    return-void

    :cond_4
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAutoResizeSnapTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setDividerFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    goto :goto_0
.end method

.method public setIgnoreAutoResize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    return-void
.end method

.method public setMinimizedDockStack(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->dismissAutoResize(J)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_6

    move v0, v3

    :goto_3
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public setMinimizedDockStack(ZJ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_9

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(ZJ)V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->dismissAutoResize(J)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_7

    move v0, v3

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v2, v1

    goto :goto_3
.end method

.method setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    return-void
.end method

.method public shouldIgnoreAutoResize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    return v0
.end method

.method showSnapGuide(ZILandroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "fromSplit"

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_0
    const-string/jumbo v0, "finish"

    goto :goto_0
.end method

.method showSnapWindowDismissToast(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v5, "remove task"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v5, "swap tasks"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "resize docked size null"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "config-orientation"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "snap task to back"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapWindowDismissToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public startDragging(ZZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->startDividerDragging()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method startSnapMode(ZZ)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method startSnapMode(ZZI)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public stopDragging(IFZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->stopDividerDragging()V

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    goto :goto_0
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 11

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public swapTask()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SPAC"

    const-string/jumbo v3, "Switch"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public validateAutoResizePosition(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinAutoResizePos:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaxAutoResizePos:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
