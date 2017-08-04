.class Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;
.super Ljava/lang/Object;
.source "FolderTransitionAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->isValidView:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v2, v2, v4

    sub-float v2, v3, v2

    mul-float/2addr v2, v0

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v2, v2, v5

    sub-float v2, v3, v2

    mul-float/2addr v2, v0

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v2, v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v2, v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method
