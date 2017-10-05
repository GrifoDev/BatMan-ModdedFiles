.class public abstract Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.super Ljava/lang/Object;
.source "PageTransitionEffects.java"


# static fields
.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_ROTATION:F = 15.0f

.field protected static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "PageTransitionEffects"

.field protected static TRANSITION_PIVOT:F = 0.0f

.field static final sPageZoomScaleLimit:F = 0.7f

.field public static transition_rotation_max:F


# instance fields
.field private mDragBarSize:I

.field protected mDragScrollDrawInward:F

.field private mEditModePanel_left_Adjust:I

.field private mEditModePanel_top_Adjust:I

.field protected mEditModeShrinkFactor:F

.field protected mEndPage:Z

.field protected mFastScrollDrawInward:F

.field protected mNormalScrollDrawInward:F

.field protected mShrinkTranslateX:F

.field protected mShrinkTranslateY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->TRANSITION_PIVOT:F

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->transition_rotation_max:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x3ee66666    # 0.45f

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mFastScrollDrawInward:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mNormalScrollDrawInward:F

    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragScrollDrawInward:F

    iput-boolean v2, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEndPage:Z

    iput v2, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    iput v2, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModeShrinkFactor:F

    const v1, 0x7f10000e

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mNormalScrollDrawInward:F

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragScrollDrawInward:F

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->transition_rotation_max:F

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragBarSize:I

    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    const v1, 0x7f0a01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mFastScrollDrawInward:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mNormalScrollDrawInward:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragScrollDrawInward:F

    iput-boolean v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEndPage:Z

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    return-void
.end method

.method static mix(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
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


# virtual methods
.method public abstract applyTransform(Landroid/view/View;FI)V
.end method

.method protected backgroundAlphaThreshold(F)F
    .locals 4

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected maxOverScroll()F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method public onLayout(Landroid/view/ViewGroup;ZIIII)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateX:F

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModeShrinkFactor:F

    sub-float v4, v6, v4

    mul-float v1, v3, v4

    mul-float v2, v1, v5

    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragBarSize:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragBarSize:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    :cond_0
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModeShrinkFactor:F

    sub-float v3, v6, v3

    div-float v3, v2, v3

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    :cond_1
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateX:F

    iget v4, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateX:F

    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    iget v4, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    return-void
.end method

.method public reset(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

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

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
