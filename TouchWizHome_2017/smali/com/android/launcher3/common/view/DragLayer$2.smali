.class Lcom/android/launcher3/common/view/DragLayer$2;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/DragLayer;

.field final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$anchorViewInitialRect:Landroid/graphics/Rect;

.field final synthetic val$anchorViewInitialScrollX:I

.field final synthetic val$dropViewScale:F

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScaleX:F

.field final synthetic val$finalScaleY:F

.field final synthetic val$from:Landroid/graphics/Rect;

.field final synthetic val$initAlpha:F

.field final synthetic val$initScaleX:F

.field final synthetic val$initScaleY:F

.field final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$to:Landroid/graphics/Rect;

.field final synthetic val$view:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/common/drag/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer$2;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    iput-object p3, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$initScaleX:F

    iput p6, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$dropViewScale:F

    iput p7, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$initScaleY:F

    iput p8, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$finalScaleX:F

    iput p9, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$finalScaleY:F

    iput p10, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$finalAlpha:F

    iput p11, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$initAlpha:F

    iput-object p12, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$to:Landroid/graphics/Rect;

    iput-object p14, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorView:Landroid/view/View;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorViewInitialRect:Landroid/graphics/Rect;

    move/from16 v0, p16

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorViewInitialScrollX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    move v3, v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    move v12, v15

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$initScaleX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$dropViewScale:F

    move/from16 v25, v0

    mul-float v10, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$initScaleY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$dropViewScale:F

    move/from16 v25, v0

    mul-float v11, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$finalScaleX:F

    move/from16 v24, v0

    mul-float v24, v24, v15

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v15

    mul-float v25, v25, v10

    add-float v17, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$finalScaleY:F

    move/from16 v24, v0

    mul-float v24, v24, v15

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v15

    mul-float v25, v25, v11

    add-float v18, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$finalAlpha:F

    move/from16 v24, v0

    mul-float v24, v24, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$initAlpha:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v26, v26, v3

    mul-float v25, v25, v26

    add-float v2, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$from:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v10, v25

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v7, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$from:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v11, v25

    int-to-float v0, v9

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v8, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$to:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v7

    mul-float v24, v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v7

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$to:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v8

    mul-float v24, v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v8

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorViewInitialRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorViewInitialRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v24, v24, v16

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v13, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorViewInitialRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v24, v24, v16

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v14, v0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getScaleX()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorViewInitialScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$anchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScrollX()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    int-to-float v0, v13

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v4, v0

    move v5, v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DragView;->getScrollX()I

    move-result v24

    sub-int v24, v20, v24

    add-int v21, v24, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DragView;->getScrollY()I

    move-result v24

    sub-int v24, v22, v24

    add-int v23, v24, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/common/drag/DragView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/common/drag/DragView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$view:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DragView;->setAlpha(F)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    goto/16 :goto_1
.end method
