.class public abstract Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "AbstractTransitionEffects.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract adjustScrollProgress(F)F
.end method

.method public applyTransform(Landroid/view/View;FI)V
    .locals 13

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, p2, v11

    if-gtz v11, :cond_0

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v11, p2, v11

    if-gez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->adjustScrollProgress(F)F

    move-result v0

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    invoke-static {v11, v12, v0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->mix(FFF)F

    move-result v11

    mul-float/2addr v10, v11

    move/from16 v2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->backgroundAlphaThreshold(F)F

    move-result v6

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    const/high16 v11, 0x41700000    # 15.0f

    mul-float v5, v11, p2

    invoke-virtual {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getScrollDrawInward()F

    move-result v7

    mul-float v11, p2, v7

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v8, v11, v12

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->mEndPage:Z

    invoke-virtual {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->isLoopingEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0, p2, v4}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getPivotValueX(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getPivotValueY(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotY(F)V

    :goto_1
    invoke-virtual {p0, p2, v10}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getZoomValueY(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleY(F)V

    invoke-virtual {p0, p2, v10}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getZoomValueX(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    iget v11, p0, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->mShrinkTranslateX:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    invoke-virtual {p0, p2, v10}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getTranslationValueDeltaX(FF)F

    move-result v11

    add-float/2addr v8, v11

    :cond_2
    iget v11, p0, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->mShrinkTranslateY:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_3

    invoke-virtual {p0, p2, v10}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getTranslationValueY(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationY(F)V

    :cond_3
    invoke-virtual {p0, p2, v8}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getTranslationValueX(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2, v5}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getRotationValue(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setRotationY(F)V

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->mix(FFF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_4
    sget v9, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->transition_rotation_max:F

    if-nez v2, :cond_5

    const/4 v11, 0x0

    cmpg-float v11, p2, v11

    if-gez v11, :cond_5

    sget v11, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->TRANSITION_PIVOT:F

    int-to-float v12, v4

    mul-float/2addr v11, v12

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    neg-float v11, v9

    mul-float/2addr v11, p2

    invoke-virtual {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->maxOverScroll()F

    move-result v12

    div-float v5, v11, v12

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v8

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_6

    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->mEndPage:Z

    int-to-float v11, v4

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    int-to-float v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotY(F)V

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v9, v11

    neg-float v11, v11

    mul-float/2addr v11, p2

    invoke-virtual {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->maxOverScroll()F

    move-result v12

    div-float v5, v11, v12

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v11

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v12

    sub-float v8, v11, v12

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0, p2, v4}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getPivotValueX(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;->getPivotValueY(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotY(F)V

    goto/16 :goto_1
.end method

.method protected abstract getPivotValueX(FI)F
.end method

.method protected abstract getPivotValueY(FI)F
.end method

.method protected abstract getRotationValue(FF)F
.end method

.method protected abstract getScrollDrawInward()F
.end method

.method protected abstract getTranslationValueDeltaX(FF)F
.end method

.method protected abstract getTranslationValueX(FF)F
.end method

.method protected abstract getTranslationValueY(FF)F
.end method

.method protected abstract getZoomValueX(FF)F
.end method

.method protected abstract getZoomValueY(FF)F
.end method
