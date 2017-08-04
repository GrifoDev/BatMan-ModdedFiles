.class Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

.field final synthetic val$changedView:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->val$visibility:I

    iput-object p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->val$changedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->access$302(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;Z)Z

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->val$visibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->val$changedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-static {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->access$400(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->val$changedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-static {v1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->access$400(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;->this$1:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->access$302(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;Z)Z

    return-void
.end method
