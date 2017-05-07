.class public Lcom/android/launcher3/pagetransition/effects/Card;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Card.java"


# instance fields
.field private final PERFORM_OVERSCROLL_ROTATION:Z

.field private mSineIO70Interpolator:Landroid/view/animation/Interpolator;

.field private mSineIO80Interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/Card;->PERFORM_OVERSCROLL_ROTATION:Z

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/View;FI)V
    .locals 20

    const/16 v17, 0x0

    cmpg-float v17, p2, v17

    if-gez v17, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    move/from16 v5, p3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, p2, v17

    if-gtz v17, :cond_0

    const/high16 v17, -0x40800000    # -1.0f

    cmpg-float v17, p2, v17

    if-gez v17, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/pagetransition/effects/Card;->backgroundAlphaThreshold(F)F

    move-result v11

    const v12, 0x3ea8f5c3    # 0.33f

    const v13, 0x3f2b851f    # 0.67f

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, p2, v17

    cmpg-float v17, v3, v13

    if-gez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    sub-float v18, v13, v3

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v12

    div-float v18, v18, v19

    invoke-interface/range {v17 .. v18}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    move v9, v6

    :cond_3
    :goto_2
    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getPageBackgroundAlpha()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/android/launcher3/pagetransition/effects/Card;->mix(FFF)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    mul-float v18, v18, v19

    sub-float v16, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/pagetransition/effects/Card;->isLoopingEnabled()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredHeight()I

    move-result v7

    sget v15, Lcom/android/launcher3/pagetransition/effects/Card;->transition_rotation_max:F

    if-nez v5, :cond_7

    const/16 v17, 0x0

    cmpg-float v17, p2, v17

    if-gez v17, :cond_7

    sget v17, Lcom/android/launcher3/pagetransition/effects/Card;->TRANSITION_PIVOT:F

    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    neg-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/pagetransition/effects/Card;->maxOverScroll()F

    move-result v18

    div-float v10, v17, v18

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v14

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_4
    :goto_3
    invoke-virtual {v4, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->setAlpha(F)V

    if-eqz v2, :cond_5

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleY(F)V

    :cond_5
    invoke-virtual {v4, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    invoke-virtual {v4, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->setRotationY(F)V

    goto/16 :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    const/16 v17, 0x0

    cmpl-float v17, p2, v17

    if-lez v17, :cond_8

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v17

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v18

    sub-float v14, v17, v18

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    mul-float v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/pagetransition/effects/Card;->maxOverScroll()F

    move-result v19

    div-float v18, v18, v19

    sub-float v16, v17, v18

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleY(F)V

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    int-to-float v0, v7

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotY(F)V

    int-to-float v0, v8

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    goto :goto_3
.end method

.method public reset(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->reset(Landroid/view/View;)V

    check-cast p1, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    return-void
.end method
