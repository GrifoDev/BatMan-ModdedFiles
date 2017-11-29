.class public Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollPopup.java"


# static fields
.field private static final FAST_SCROLL_OVERLAY_Y_OFFSET_FACTOR:F = 1.5f


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/Animator;

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mBgBounds:Landroid/graphics/Rect;

.field private mBgOriginalSize:I

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

.field private mSectionName:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    const v0, 0x7f0a0116

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    const v0, 0x7f020028

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a0117

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public animateVisibility(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-string v1, "alpha"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x96

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    return v0
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public updateFastScrollerBounds(Lcom/android/launcher3/common/base/view/BaseRecyclerView;I)Landroid/graphics/Rect;
    .locals 7

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    const/high16 v5, 0x3fc00000    # 1.5f

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method
