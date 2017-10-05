.class Lcom/android/launcher3/common/quickoption/QuickOptionView$4;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateHide(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const v1, 0x3e4ccccd    # 0.2f

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionView$4$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$4$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView$4;)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
