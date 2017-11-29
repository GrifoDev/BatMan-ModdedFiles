.class public Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;
    }
.end annotation


# static fields
.field private static final MAX_TRACK_ALPHA:I = 0x1e

.field private static final SCROLL_BAR_VIS_DURATION:I = 0x96


# instance fields
.field private mCanThumbDetach:Z

.field private mIgnoreDragGesture:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

.field private mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

.field private mScrollbarAnimator:Landroid/animation/AnimatorSet;

.field private mThumbActiveColor:I

.field private mThumbCurvature:I

.field private mThumbHeight:I

.field private mThumbInactiveColor:I

.field private mThumbMaxWidth:I

.field private mThumbMinWidth:I

.field private mThumbOffset:Landroid/graphics/Point;

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbPath:Landroid/graphics/Path;

.field private mThumbWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrackPaint:Landroid/graphics/Paint;

.field private mTrackWidth:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    new-instance v0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;-><init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getFastScrollerTrackColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x7f0e000d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getFastScrollerThumbInactiveColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    const v0, 0x7f0e000c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f0a011a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    const v0, 0x7f0a0119

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    const v0, 0x7f0a0118

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    const v0, 0x7f0a011b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Lcom/android/launcher3/common/base/view/BaseRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    return-object v0
.end method

.method private animateScrollbar(Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-string v4, "trackWidth"

    new-array v5, v7, [I

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_0
    aput v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "thumbWidth"

    new-array v5, v7, [I

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_1
    aput v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    if-eq v3, v4, :cond_1

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    if-eqz p1, :cond_4

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;-><init>(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    goto :goto_2
.end method

.method private isNearThumb(II)Z
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private updateThumbPath()V
    .locals 7

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getLastTouchY()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method public getThumbMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    return v0
.end method

.method public getThumbOffset()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method public getTrackWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;III)V
    .locals 10

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, p3, v7

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    goto :goto_0

    :pswitch_1
    iget-boolean v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    sub-int v7, v6, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v9

    if-le v7, v9, :cond_3

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v7, v8

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    if-nez v7, :cond_2

    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v7

    if-eqz v7, :cond_2

    sub-int v7, v6, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    if-le v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    :cond_1
    iget v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v8, p4, p3

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v7

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    sub-int v1, v7, v8

    iget v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v7, v6, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v2, v7

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    int-to-float v8, v5

    sub-float v8, v2, v8

    sub-int v9, v1, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->setSectionName(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    iget-object v9, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v8, v9, p4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->updateFastScrollerBounds(Lcom/android/launcher3/common/base/view/BaseRecyclerView;I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    iput v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDraggingThumb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    return v0
.end method

.method public isThumbDetached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    return v0
.end method

.method public reattachThumbToScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    return-void
.end method

.method public setDetachThumbOnFastScroll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    return-void
.end method

.method public setThumbOffset(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    invoke-direct {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setThumbWidth(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    invoke-direct {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTrackWidth(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    invoke-direct {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
