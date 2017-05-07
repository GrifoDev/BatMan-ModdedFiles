.class public Lcom/android/launcher3/util/animation/UiThreadCircularReveal;
.super Ljava/lang/Object;
.source "UiThreadCircularReveal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;
    .locals 6

    sget-object v5, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/animation/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object v2, p0

    new-instance v1, Lcom/android/launcher3/util/animation/RevealOutlineProvider;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/launcher3/util/animation/RevealOutlineProvider;-><init>(IIFF)V

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    new-instance v4, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;

    invoke-direct {v4, v2, v1, v0, p5}, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;-><init>(Landroid/view/View;Lcom/android/launcher3/util/animation/RevealOutlineProvider;FLandroid/view/ViewOutlineProvider;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;

    invoke-direct {v4, v1, v2}, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;-><init>(Lcom/android/launcher3/util/animation/RevealOutlineProvider;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
