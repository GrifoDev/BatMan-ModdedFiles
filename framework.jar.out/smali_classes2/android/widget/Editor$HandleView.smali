.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HandleView$1;,
        Landroid/widget/Editor$HandleView$2;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field static final MAGNIFYING_FACTOR:F = 1.5f

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field public HIDE_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public SHOW_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field private mFirstParentY:I

.field protected mHandleType:I

.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mHideDuration:I

.field private mHighlightRect:[I

.field protected mHorizontalGravity:I

.field protected mHorizontalOffset:F

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mIsHideAnimating:Z

.field private mIsResetAnimating:Z

.field private mIsShowAnimating:Z

.field protected mIsVerticalScrolled:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mOldDrawable:Landroid/graphics/drawable/Drawable;

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mPrevLine:I

.field private mPreviousHighlightRect:[I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mResetAnimator:Landroid/animation/ValueAnimator;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field private mShowDuration:I

.field protected mTouchOffsetY:F

.field protected mTouchToWindowOffsetX:F

.field protected mTouchToWindowOffsetY:F

.field protected mVerticalOffset:F

.field protected mVerticalScroll:F

.field protected mVisibleHeight:I

.field multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    iput v5, p0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mVerticalScroll:F

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    iput v5, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    const/4 v2, 0x5

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    new-instance v2, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    new-instance v2, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->SHOW_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-instance v2, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->HIDE_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10102c8

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    int-to-float v2, v1

    const v3, -0x41666666    # -0.3f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    int-to-float v2, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    return-void
.end method

.method private filterOnTouchUp()V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, v10}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    :cond_1
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->-wrap8(Landroid/widget/Editor;FF)Z

    move-result v0

    return v0
.end method

.method private magnifyHandleView()V
    .locals 11

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v3, v5

    int-to-float v5, v0

    mul-float/2addr v5, v6

    float-to-int v2, v5

    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v5, "width"

    new-array v6, v9, [I

    aput v1, v6, v7

    aput v3, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, "height"

    new-array v6, v9, [I

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v6, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v6, p0, v3, v2}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private resetHandleView()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v19

    add-int v16, v18, v19

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v18

    add-int v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v8, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v18, "positionX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v14, v19, v20

    const/16 v20, 0x1

    aput v16, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v8, v19

    const-string/jumbo v18, "positionY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v8, v19

    const-string/jumbo v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v8, v19

    const-string/jumbo v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v4, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v8, v19

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xfa

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/view/animation/PathInterpolator;

    const/high16 v20, 0x3e800000    # 0.25f

    const v21, 0x3eeb851f    # 0.46f

    const v22, 0x3ee66666    # 0.45f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/Editor$HandleView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/Editor$HandleView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    const/16 v18, 0x6

    move/from16 v0, v18

    iput v0, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    return-void
.end method


# virtual methods
.method public cancelAnimator(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v5, v3}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    sub-int v5, v2, v0

    sub-int v5, v1, v5

    sub-int v6, v2, v0

    sub-int v6, v1, v6

    add-int/2addr v6, p1

    invoke-direct {v3, v5, v4, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_0
    move v3, v4

    goto :goto_0

    :pswitch_1
    div-int/lit8 v2, p1, 0x4

    goto :goto_1

    :pswitch_2
    div-int/lit8 v2, p1, 0x2

    goto :goto_1

    :pswitch_3
    mul-int/lit8 v3, p1, 0x3

    div-int/lit8 v2, v3, 0x4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getDrawableHeight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getDrawableWidth()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getHandleType()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    return v0
.end method

.method public getHideAnimator()Landroid/animation/ObjectAnimator;
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v4, "bounds"

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->HIDE_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    aput-object v7, v6, v8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/widget/Editor$HandleView$9;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$9;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/widget/Editor$HandleView$10;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$10;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3eeb851f    # 0.46f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v3
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    sparse-switch v3, :sswitch_data_0

    :sswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    :goto_0
    return v1

    :sswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    sub-int v1, v2, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method public getShowAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "bounds"

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->SHOW_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v7

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v3, p0, v1, v0}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    iget v3, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3eeb851f    # 0.46f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeAllHandleMessage()V

    return-void
.end method

.method protected hideAfterDelay()V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected abstract isHandleViewScreenOut()Z
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onHandleMoved()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeAllHandleMessage()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Landroid/widget/Editor;->-wrap26(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    const/4 v13, 0x1

    return v13

    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->magnifyHandleView()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    invoke-virtual {v7}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v12, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v12

    :cond_1
    sub-int v13, v11, v12

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v13}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v13, v14}, Landroid/widget/Editor;->-set5(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVerticalScroll:F

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v14, v14

    sub-float v8, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v14, v14

    sub-float v1, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v13, v8, v13

    if-gez v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    add-float/2addr v13, v6

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v13}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v13, v9, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v14

    int-to-float v14, v14

    add-float v4, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v5, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v13, v14

    add-float/2addr v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    goto/16 :goto_0

    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_7

    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    aput v6, v5, v3

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v3

    if-eq v5, v6, :cond_8

    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v6, v6, v4

    aput v6, v5, v4

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    aput v5, v4, v3

    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_2
    if-nez v2, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    :cond_4
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v4, :cond_9

    :cond_5
    :goto_2
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_6
    return-void

    :cond_7
    move v2, v4

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_2
.end method

.method protected removeHiderCallback()V
    .locals 0

    return-void
.end method

.method public setHideDuration(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    return-void
.end method

.method public setIsHideAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return-void
.end method

.method public setIsShowAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return-void
.end method

.method public setShowDuration(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    return-void
.end method

.method public show()V
    .locals 3

    const/16 v2, 0xff

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    return-void

    :cond_3
    return-void
.end method

.method public showImmediately()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v2, v1, v4

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v2, v1, v5

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v1, v5

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v1, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    if-nez p3, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    :cond_2
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v1, :cond_5

    :cond_3
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_4
    return-void

    :cond_5
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v1, v0, v4

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v1, v0, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method public updatePositionImmediately(II)V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v1, v4, [I

    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    aget v2, v1, v6

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v6

    aget v2, v1, v5

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v1, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    aget v2, v1, v5

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v4, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v6

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v2, v0, v5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v2, v0, v6

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v3, v0, v6

    aget v4, v0, v5

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    aget v4, v0, v6

    aget v5, v0, v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
