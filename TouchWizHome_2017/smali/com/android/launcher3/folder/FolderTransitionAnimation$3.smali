.class Lcom/android/launcher3/folder/FolderTransitionAnimation$3;
.super Ljava/lang/Object;
.source "FolderTransitionAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateCloseToPosition(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

.field final synthetic val$folderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field final synthetic val$openFolder:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$folderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$folderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$folderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$300(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->isValidView:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v2, v2, v6

    sub-float v2, v5, v2

    mul-float/2addr v2, v0

    sub-float v2, v5, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v2, v2, v7

    sub-float v2, v5, v2

    mul-float/2addr v2, v0

    sub-float v2, v5, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v2, v2, v6

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->val$openFolder:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v2, v2, v7

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationY(F)V

    :cond_0
    return-void
.end method
