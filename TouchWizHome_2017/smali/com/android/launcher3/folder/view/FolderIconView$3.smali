.class Lcom/android/launcher3/folder/view/FolderIconView$3;
.super Ljava/lang/Object;
.source "FolderIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderIconView;

.field final synthetic val$finalParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field final synthetic val$reverse:Z

.field final synthetic val$scale0:F

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView;ZFLcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$reverse:Z

    iput p3, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$transX0:F

    iput-object p4, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$finalParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iput p5, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$transY0:F

    iput p6, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$scale0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$reverse:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$400(Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$500(Lcom/android/launcher3/folder/view/FolderIconView;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$finalParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$500(Lcom/android/launcher3/folder/view/FolderIconView;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$finalParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$500(Lcom/android/launcher3/folder/view/FolderIconView;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$scale0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$finalParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->val$scale0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->invalidate()V

    return-void
.end method
