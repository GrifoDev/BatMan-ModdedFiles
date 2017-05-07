.class public Lcom/android/launcher3/pagetransition/effects/Plain;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Plain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/View;FI)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/pagetransition/effects/Plain;->backgroundAlphaThreshold(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getPageBackgroundAlpha()F

    move-result v2

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/pagetransition/effects/Plain;->mix(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_0
.end method
