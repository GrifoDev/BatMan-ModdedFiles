.class public abstract Lcom/android/launcher3/common/base/view/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/view/PagedView$SavedState;,
        Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;,
        Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;,
        Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;,
        Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIM_TAG_KEY:I = 0x64

.field private static final DEBUG:Z = false

.field public static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field protected static final EXTRA_TOUCH_SLOP_SCALE_RATIO:F = 2.5f

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field public static final HINT_PAGE_ANIMATION_DURATION:I = 0xc8

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field private static final NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I = 0x2

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.32f

.field public static final PAGE_SNAP_ANIMATION_DURATION:I

.field private static final REORDERING_DROP_REPOSITION_DURATION:I = 0xc8

.field private static final REORDERING_REORDER_REPOSITION_DURATION:I = 0x12c

.field private static final REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I = 0x50

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field public static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_PINCH_ZOOM:I = 0x3

.field protected static final TOUCH_STATE_REORDERING:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final TRANSITION_BOUNCE_MIN_ALPHA:F = 0.7f

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.96f

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final SCROLL_DONE:I

.field private final SCROLL_NONE:I

.field private final SCROLL_READY_TO_PULLING:I

.field private final SCROLL_READY_TO_RETURN:I

.field private final SCROLL_START_PULLING:I

.field private final SCROLL_START_RETURN:I

.field private mActivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mActivePointerId:I

.field private mCancelTap:Z

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field private mContinuallyScroll:Z

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field private mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field private mEnablePageIndicatorAnim:Z

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mHintPageLeftZone:I

.field protected mHintPageRightZone:I

.field protected mHintPageWidth:I

.field protected final mInsets:Landroid/graphics/Rect;

.field private mIsDataReady:Z

.field public mIsPageMoving:Z

.field private mIsReordering:Z

.field private mIsShowingHintPages:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field private mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutWidthGap:I

.field private mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

.field private mPageScrolls:[I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mPullingPagesAnim:Landroid/animation/ObjectAnimator;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field private mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

.field private mScrollState:I

.field protected mScroller:Lcom/android/launcher3/common/base/PageScroller;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field private mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mTranslateAllPages:F

.field protected mTranslatePagesOffset:F

.field protected mUnboundedScrollX:I

.field private mUpdateOnlyCurrentPage:Z

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    new-array v0, v1, [F

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    return-void

    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    const/16 v1, -0x3e9

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFadeInAdjacentScreens:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$2;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_NONE:I

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_READY_TO_PULLING:I

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_READY_TO_RETURN:I

    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_START_PULLING:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_START_RETURN:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_DONE:I

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageLayoutWidthGap:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->init()V

    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScroll()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateMaxScrollX()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/base/view/PagedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/view/PagedView;)Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/base/view/PagedView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/base/view/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/launcher3/common/base/view/PagedView;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher3/common/base/view/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$4;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private animatePullingPages()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string v0, "PagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animatePullingPages() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-ne v0, v3, :cond_1

    const-string v0, "translationX"

    new-array v1, v3, [F

    aput v4, v1, v5

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$7;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "translationX"

    new-array v1, v3, [F

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    aput v2, v1, v5

    aput v4, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private animateTranslationPage(Landroid/view/View;FF)V
    .locals 4

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private checkTouchedPageIndicator(FF)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v0, v8, [I

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/view/PageIndicator;->getLocationOnScreen([I)V

    aget v8, v0, v7

    int-to-float v4, v8

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher3/common/view/PageIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float v2, v4, v8

    aget v8, v0, v6

    int-to-float v3, v8

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher3/common/view/PageIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v1, v3, v8

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v8, v4

    float-to-int v9, v3

    float-to-int v10, v2

    float-to-int v11, v1

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v8, :cond_0

    float-to-int v8, p1

    float-to-int v9, p2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private dampedOverScroll(F)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v2

    div-float v0, p1, v3

    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    :cond_1
    const v3, 0x3ea3d70a    # 0.32f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private forceFinishScroller()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->forceFinished(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    return-void
.end method

.method private getHintCenterPage()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method private hideHintPages(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v3, v3

    int-to-float v1, v3

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1, v5}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    :cond_0
    if-ge p1, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    neg-float v4, v1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isTranslatedPages()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPulledPages called from hideHintPage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    :cond_3
    return-void

    :cond_4
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v1, v3

    goto :goto_0
.end method

.method private invalidatePageData(IZ)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->syncPages()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->measure(II)V

    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method private isActivePage(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isHorizontalScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isHorizontalScroll()Z

    move-result v0

    goto :goto_0
.end method

.method private isPullingPageTouchArea(F)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isTranslatedPages()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->setActivePages(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItemsInternal(IZ)V

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    if-ne p1, v1, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isActivePage(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/Page;

    invoke-interface {v2}, Lcom/android/launcher3/common/base/view/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v2}, Lcom/android/launcher3/common/base/view/Page;->removeAllViewsOnPage()V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private maxOverScroll()F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    const v1, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v0

    return v1
.end method

.method private onPostReorderingAnimationCompleted(Z)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private overscrollEffect(Landroid/view/View;FI)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v4, 0x21

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->maxOverScroll()F

    move-result v5

    div-float/2addr v4, v5

    sub-float v2, v6, v4

    const v4, 0x3f75c28f    # 0.96f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    add-int/lit8 v1, p3, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    div-float v4, p2, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    return-void
.end method

.method private scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v3, v4

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    float-to-int v4, v4

    sub-int v0, v3, v4

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    move v1, v0

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDeltaXwithCompensation(I)I

    move-result v1

    :cond_1
    neg-int v4, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->scrollBy(II)V

    int-to-float v4, v3

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private setHintPageTranslation()V
    .locals 7

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v5, v5

    int-to-float v4, v5

    :goto_0
    move v0, v1

    :goto_1
    if-gt v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v4, v5

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, 0x1

    if-ne v0, v5, :cond_3

    neg-float v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItems(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragViewBaselineLeft:F

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updateMaxScrollX()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method

.method private updatePageIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 3

    move v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public addMarkerForView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V

    :cond_0
    return-void
.end method

.method public canDragScroll()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canOverScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public cancelDeferLoadAssociatedPagesUntilScrollCompletes()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    return-void
.end method

.method protected cancelScroll()V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->getCurrY()I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v2

    mul-float/2addr v5, v6

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/PageScroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    :cond_2
    :goto_0
    return v4

    :cond_3
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    if-eq v6, v7, :cond_6

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    iget-boolean v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq v6, v0, :cond_4

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    :cond_4
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    if-eq v6, v7, :cond_5

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$1;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-direct {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted(Z)V

    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v5}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v8, v2

    float-to-int v9, v5

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/common/base/view/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v3, v1, :cond_2

    move v4, v6

    :goto_1
    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isHorizontalScroll()Z

    move-result v8

    if-eqz v8, :cond_3

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    sub-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionBegin()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move v7, v6

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v6}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setSlopCompensation()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v12

    div-int/lit8 v3, v12, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v12

    add-int v10, v12, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/PagedView;->getVisiblePages([I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    const/4 v13, 0x0

    aget v7, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    const/4 v13, 0x1

    aget v9, v12, v13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v12, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v12, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_0
    :goto_0
    if-gez v7, :cond_1

    const/4 v7, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    if-ne v10, v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    if-eqz v12, :cond_3

    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v9}, Lcom/android/launcher3/common/base/view/PagedView;->screenScrolled(III)V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v12, v7, v9}, Lcom/android/launcher3/common/base/PageScroller;->isUpdatedScreenIndex(II)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    :cond_4
    const/4 v12, -0x1

    if-eq v7, v12, :cond_10

    const/4 v12, -0x1

    if-eq v9, v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getRight()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getBottom()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/lit8 v6, v8, -0x1

    :goto_1
    if-ltz v6, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-ne v11, v12, :cond_8

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_6
    if-ne v7, v9, :cond_0

    add-int/lit8 v12, v8, -0x1

    if-ge v9, v12, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    if-lez v7, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v12, :cond_9

    if-gt v7, v6, :cond_d

    if-gt v6, v9, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_9
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6, v10}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-nez v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v12

    if-ne v6, v12, :cond_5

    new-instance v12, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffectForInvisiblePage(Landroid/view/View;)V

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceDrawAllChildrenNextFrame:Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    const/16 v3, 0x42

    const/16 v2, 0x11

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_1

    if-ne p2, v2, :cond_2

    const/16 p2, 0x42

    :cond_1
    :goto_1
    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_1

    const/16 p2, 0x11

    goto :goto_1

    :cond_3
    if-ne p2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragPullingPages(F)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-nez v1, :cond_9

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v0

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-nez v1, :cond_0

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    if-lez v0, :cond_7

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    :cond_7
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8

    if-lez v0, :cond_8

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    :cond_8
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    goto :goto_2

    :cond_a
    const-string v1, "PagedView"

    const-string v2, "Cannot drag to next page. It\'s abnormal state during dragging item."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method endReordering()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/base/view/PagedView$5;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/common/base/view/PagedView$6;-><init>(Lcom/android/launcher3/common/base/view/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 10

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v6, v7

    :goto_0
    return-object v6

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v8

    if-ge v3, v8, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v7

    goto :goto_0
.end method

.method public findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/IconView;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_2

    const-string v6, "\\s"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/view/LauncherRootView;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicator;

    return-object v2
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, p1

    :goto_0
    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    if-eq v2, p0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0
.end method

.method public forcelyAnimateReturnPages()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPageCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    array-length v3, v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingRight()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    aget v3, v3, p1

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v4

    add-int v0, v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v2

    goto :goto_1
.end method

.method public getMaxScrollX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    return v0
.end method

.method protected getNearestHoverOverPageIndex()I
    .locals 8

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    invoke-direct {p0, p0, v6, v7}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    const/4 v6, 0x0

    aget v1, v3, v6

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v6, v1

    float-to-int v2, v6

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v2, :cond_2

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_1

    :goto_0
    add-int/2addr v0, v4

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v2, v6, :cond_0

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    :goto_2
    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method public getNextPage()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getNormalChildHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method protected getPageCacheSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>()V

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 12

    const v7, 0x7fffffff

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v7, :cond_0

    move v7, v3

    move v8, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v8
.end method

.method public getRestorePage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    add-int/2addr v6, v3

    sub-int v2, p1, v6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, p3, 0x1

    if-gez v2, :cond_0

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_1

    :cond_0
    if-lez v2, :cond_2

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_2

    :cond_1
    add-int/lit8 v0, p3, -0x1

    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v6, v1, -0x1

    if-le v0, v6, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    add-int v5, v6, v7

    :goto_0
    int-to-float v6, v2

    int-to-float v7, v5

    mul-float/2addr v7, v8

    div-float v4, v6, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewportHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getViewportOffsetX()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportOffsetY()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v4

    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    sget-object v7, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aput v8, v7, v10

    aput v8, v6, v8

    aput v9, p1, v8

    aput v9, p1, v10

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aput v8, v6, v8

    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v8

    if-le v6, v5, :cond_1

    aget v6, p1, v8

    if-ne v6, v9, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v8

    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v8

    if-gez v6, :cond_3

    aget v6, p1, v8

    if-eq v6, v9, :cond_0

    :cond_2
    aput v1, p1, v10

    :goto_2
    return-void

    :cond_3
    move v1, v3

    aget v6, p1, v8

    if-gez v6, :cond_0

    aput v1, p1, v8

    goto :goto_1

    :cond_4
    aput v9, p1, v8

    aput v9, p1, v10

    goto :goto_2
.end method

.method public hideHintPages()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->hideHintPages(I)V

    :cond_0
    return-void
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/base/PageScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    new-instance v2, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCenterPagesVertically:Z

    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFlingThresholdVelocity:I

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinFlingVelocity:I

    const v2, 0x44bb8000    # 1500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinSnapVelocity:I

    invoke-virtual {p0, p0}, Lcom/android/launcher3/common/base/view/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->setWillNotDraw(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected isContentsRefreshable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isPageMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollableToZeroPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAssociatedPages(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(IZ)V

    return-void
.end method

.method protected notifyPageChange(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;->onPageChange(III)V

    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;->onPageScroll(IIIII)V

    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageIndicator()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllMarkers()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/PageIndicator;->getMaxVisibleSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getSupportCustomPageCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v4, v3, v5, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarkers(Ljava/util/ArrayList;ZLcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/view/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    return-void
.end method

.method protected onConfigurationChangedIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-void
.end method

.method public onEndReordering()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0x9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_1
    cmpl-float v4, v0, v5

    if-nez v4, :cond_1

    cmpl-float v4, v2, v5

    if-eqz v4, :cond_0

    :cond_1
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_5

    cmpg-float v4, v0, v5

    if-ltz v4, :cond_2

    cmpg-float v4, v2, v5

    if-gez v4, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollRight()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v2, v4

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_1

    :cond_5
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_6

    cmpl-float v4, v2, v5

    if-lez v4, :cond_3

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollLeft()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-eq v8, v6, :cond_0

    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PagedView.onInterceptTouchEvent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v3, v5}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    aget v8, v2, v7

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    aget v8, v2, v6

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x3

    if-ge v4, v8, :cond_5

    :cond_4
    move v1, v6

    :goto_2
    if-eqz v1, :cond_6

    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    goto/16 :goto_1

    :cond_5
    move v1, v7

    goto :goto_2

    :cond_6
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    float-to-int v9, v9

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/common/base/view/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_7

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    goto/16 :goto_1

    :cond_7
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

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

.method protected onLayout(ZIIII)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetY()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_6

    add-int/lit8 v17, v3, -0x1

    :goto_1
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_7

    const/4 v10, -0x1

    :goto_2
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_8

    const/4 v9, -0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingBottom()I

    move-result v21

    add-int v19, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v20

    add-int v5, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_3

    :cond_2
    new-array v0, v3, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    :cond_3
    const/4 v12, 0x0

    move/from16 v11, v17

    :goto_4
    if-eq v11, v10, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v6, v20, v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCenterPagesVertically:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v19

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v6, v6, v20

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v7, v4, :cond_9

    const/4 v12, 0x2

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v5

    add-int v21, v6, v4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    move-object/from16 v20, v0

    sub-int v21, v5, v16

    sub-int v21, v21, v13

    aput v21, v20, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    add-int v20, v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildGap()I

    move-result v21

    add-int v20, v20, v21

    add-int v5, v5, v20

    :cond_5
    add-int/2addr v11, v9

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_7
    move v10, v3

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    if-ltz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateCurrentPageScroll()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    :cond_b
    if-eq v8, v12, :cond_c

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setFirstLayout(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    move/from16 v20, v0

    const/16 v21, -0x3e9

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    const/16 v20, -0x3e9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_0

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateMaxScrollX()V

    goto/16 :goto_6

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_0

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v25, :cond_1

    if-nez v13, :cond_3

    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    :cond_2
    move/from16 v23, v26

    move/from16 v22, v14

    goto :goto_1

    :cond_3
    if-lez v26, :cond_4

    if-gtz v14, :cond_5

    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingRight()I

    move-result v28

    add-int v15, v27, v28

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v5

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v5, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/high16 v11, -0x80000000

    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/high16 v8, -0x80000000

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v27

    sub-int v27, v27, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v9, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v27

    sub-int v27, v27, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v6, v27, v28

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher3/common/base/view/PagedView;->mNormalChildHeight:I

    if-nez v21, :cond_6

    move/from16 v21, v9

    :cond_6
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v10, v7}, Landroid/view/View;->measure(II)V

    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_8
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_3

    :cond_9
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    :goto_1
    return v2

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    return-void
.end method

.method public onStartReordering()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v22

    if-gtz v22, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    :goto_0
    return v22

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v22

    if-nez v22, :cond_2

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v13

    const/16 v22, 0x0

    aget v22, v13, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    const/16 v22, 0x1

    aget v22, v13, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionBegin()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->isHorizontalScroll()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v17

    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNearestHoverOverPageIndex()I

    move-result v14

    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    aput v24, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    if-gt v0, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    if-gt v14, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    new-instance v22, Lcom/android/launcher3/common/base/view/PagedView$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/android/launcher3/common/base/view/PagedView$3;-><init>(Lcom/android/launcher3/common/base/view/PagedView;II)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x50

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v22, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    move/from16 v0, v22

    float-to-int v6, v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v22

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    :cond_7
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    const v24, 0x3ecccccd    # 0.4f

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_c

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v23, v23, v21

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move/from16 v22, v0

    const/high16 v23, 0x41c80000    # 25.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mFlingThresholdVelocity:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    const/4 v10, 0x1

    :goto_3
    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    const v24, 0x3ea8f5c3    # 0.33f

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->signum(F)F

    move-result v22

    int-to-float v0, v6

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->signum(F)F

    move-result v23

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_8

    if-eqz v10, :cond_8

    const/16 v18, 0x1

    :cond_8
    sget-boolean v22, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v22, :cond_f

    if-lez v6, :cond_e

    const/4 v9, 0x1

    :goto_4
    sget-boolean v22, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v22, :cond_12

    if-lez v20, :cond_11

    const/4 v12, 0x1

    :goto_5
    if-eqz v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v10, :cond_15

    if-nez v12, :cond_15

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    if-lez v22, :cond_15

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageWithVelocity(II)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    :cond_f
    if-gez v6, :cond_10

    const/4 v9, 0x1

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    goto :goto_4

    :cond_11
    const/4 v12, 0x0

    goto :goto_5

    :cond_12
    if-gez v20, :cond_13

    const/4 v12, 0x1

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    goto :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, -0x1

    goto :goto_6

    :cond_15
    if-eqz v11, :cond_16

    if-eqz v9, :cond_16

    if-eqz v10, :cond_17

    :cond_16
    if-eqz v10, :cond_19

    if-eqz v12, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageWithVelocity(II)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    goto :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    goto :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v17

    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->checkTouchedPageIndicator(FF)Z

    move-result v22

    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->clickPageIndicator(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected overScroll(I)V
    .locals 1

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollRight()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollLeft()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllMarkers()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeMarkerForView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/PageIndicator;->removeMarker(IZ)V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method protected resetPulledPages()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setTranslationX(F)V

    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected resetTransitionEffectForInvisiblePage(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected screenScrolled(III)V
    .locals 0

    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollLeft()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    if-gtz v0, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isScrollableToZeroPage()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->cancelDeferLoadAssociatedPagesUntilScrollCompletes()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    :cond_2
    return-void
.end method

.method public scrollRight()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->cancelDeferLoadAssociatedPagesUntilScrollCompletes()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-le p1, v2, :cond_6

    move v7, v0

    :goto_0
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_a

    if-gez p1, :cond_9

    move v6, v0

    :goto_1
    if-nez v7, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v3

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    :cond_2
    if-eqz v7, :cond_e

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    :goto_2
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int v9, v2, v3

    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    :cond_3
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v8

    aget v1, v8, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    aget v0, v8, v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_4
    if-ltz p1, :cond_5

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-gt p1, v0, :cond_5

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    :cond_5
    return-void

    :cond_6
    move v7, v1

    goto :goto_0

    :cond_7
    if-gez p1, :cond_8

    move v7, v0

    goto :goto_0

    :cond_8
    move v7, v1

    goto :goto_0

    :cond_9
    move v6, v1

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-le p1, v2, :cond_b

    move v6, v0

    goto :goto_1

    :cond_b
    move v6, v1

    goto :goto_1

    :cond_c
    move v2, v1

    goto :goto_2

    :cond_d
    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_11

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_f

    move v2, v1

    :goto_5
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_10

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    :goto_6
    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    goto :goto_4

    :cond_f
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    goto :goto_5

    :cond_10
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int v9, v2, v3

    goto :goto_6

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_4
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    :cond_0
    return-void
.end method

.method protected setActivePages(I)V
    .locals 11

    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCacheSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v1, -0x1

    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-int/lit8 v6, v8, 0x2

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v5, :cond_2

    sub-int v3, p1, v2

    if-ltz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v6, :cond_4

    add-int v7, p1, v2

    if-ge v7, v4, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setCrosshairsVisibilityChilds(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setCrosshairsVisibilityChilds(IZ)V

    return-void
.end method

.method public setCrosshairsVisibilityChilds(IZ)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateCurrentPageScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_0
.end method

.method public setDataReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected setFirstLayout(Z)V
    .locals 0

    return-void
.end method

.method public setMarkerStartOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setMarkerStartOffset(I)V

    :cond_0
    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    return-void
.end method

.method public setPageIndicatorAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    return-void
.end method

.method public setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setRestorePage(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_0
    return-void
.end method

.method public setScrollDeterminator(Lcom/android/launcher3/util/event/ScrollDeterminator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    return-void
.end method

.method public setZeroPageMarker(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setZeroPageMarker(Z)V

    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showHintPages()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v2, v2

    int-to-float v1, v2

    :goto_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, v1}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ge v2, v0, :cond_1

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    neg-float v3, v1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v1, v2

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    sget v1, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    return-void
.end method

.method public snapToPage(I)V
    .locals 1

    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    return-void
.end method

.method public snapToPage(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->awakenScrollBars(I)Z

    if-eqz p4, :cond_6

    const/4 p3, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    :cond_2
    if-eqz p5, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->setHintPageTranslation()V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/PageScroller;->startScroll(IIIII)V

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    return-void

    :cond_6
    if-nez p3, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method public snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    sub-int v2, v6, v0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 3

    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 0

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v6

    sub-int v0, v5, v6

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    sget v6, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v6, v4

    int-to-float v7, v4

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 6

    const v5, 0x3f933333    # 1.15f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragViewBaselineLeft:F

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onStartReordering()V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public supportWhiteBg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected syncPageItems(IZ)V
    .locals 0

    return-void
.end method

.method protected syncPages()V
    .locals 0

    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/PageScroller;->setFinalX(I)V

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->forceFinishScroller()V

    return-void
.end method

.method public updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    :cond_0
    return-void
.end method

.method public updateOnlyCurrentPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_3

    add-int/lit8 v0, v2, -0x1

    :goto_0
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_4

    move v1, v4

    :goto_1
    if-ne p2, v0, :cond_0

    cmpg-float v4, v3, v6

    if-ltz v4, :cond_1

    :cond_0
    if-ne p2, v1, :cond_2

    cmpl-float v4, v3, v6

    if-lez v4, :cond_2

    :cond_1
    new-instance v4, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    invoke-direct {p0, p1, v3, v2}, Lcom/android/launcher3/common/base/view/PagedView;->overscrollEffect(Landroid/view/View;FI)V

    :cond_2
    return-void

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method
