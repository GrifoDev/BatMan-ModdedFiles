.class Lcom/android/launcher3/common/base/view/CellLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[ZILjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$child:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->cancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->updateChildIfReorderAnimationCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->access$200(Lcom/android/launcher3/common/base/view/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->access$200(Lcom/android/launcher3/common/base/view/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$5;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
