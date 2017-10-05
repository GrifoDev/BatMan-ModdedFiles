.class public Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;
.super Landroid/widget/FrameLayout;
.source "DeepShortcutView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;,
        Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;
    }
.end annotation


# static fields
.field private static final sTempPoint:Landroid/graphics/Point;


# instance fields
.field private mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

.field private mIconView:Landroid/view/View;

.field private mInfo:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

.field private mOpenAnimationProgress:F

.field private final mPillRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method applyShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)V
    .locals 5

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mInfo:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;->mDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    iget-object v4, p1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;->mDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public collapseToIcon()Landroid/animation/Animator;
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Point;->x:I

    new-instance v2, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    sub-int v4, v1, v0

    add-int v5, v1, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;-><init>(Landroid/graphics/Rect;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    return-object v2
.end method

.method public createCloseAnimation(ZZJ)Landroid/animation/Animator;
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v8

    new-instance v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;ZZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v9

    long-to-float v0, p3

    iget v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mOpenAnimationProgress:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;

    iget v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mOpenAnimationProgress:F

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;-><init>(F)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v9
.end method

.method public createOpenAnimation(ZZ)Landroid/animation/Animator;
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v8

    new-instance v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;ZZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mOpenAnimationProgress:F

    invoke-virtual {v9, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v9
.end method

.method public getBubbleText()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    return-object v0
.end method

.method public getFinalInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 3

    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mInfo:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-object v0
.end method

.method public getIconCenter()Landroid/graphics/Point;
    .locals 3

    sget-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    sget-object v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getMeasuredWidth()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public isOpenOrOpening()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mOpenAnimationProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mOpenAnimationProgress:F

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f110065

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    const v0, 0x7f110064

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setWillDrawIcon(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public willDrawIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
