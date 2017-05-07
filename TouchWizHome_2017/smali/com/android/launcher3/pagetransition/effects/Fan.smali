.class public Lcom/android/launcher3/pagetransition/effects/Fan;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Fan.java"


# static fields
.field private static final FAST_ROTATION:F = 15.0f

.field private static final SLOW_ROTATION:F = 20.0f

.field private static final WORKSPACE_ROTATION:F = 20.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/View;FI)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/pagetransition/effects/Fan;->mix(FFF)F

    move-result v5

    mul-float v2, v5, p2

    const v3, 0x3ccccccd    # 0.025f

    iget v5, p0, Lcom/android/launcher3/pagetransition/effects/Fan;->mFastScrollDrawInward:F

    invoke-static {v3, v5, v7}, Lcom/android/launcher3/pagetransition/effects/Fan;->mix(FFF)F

    move-result v5

    mul-float/2addr v5, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v4, v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    cmpg-float v5, p2, v7

    if-gtz v5, :cond_2

    :goto_1
    int-to-float v5, v1

    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotX(F)V

    int-to-float v5, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    neg-float v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
