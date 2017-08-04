.class Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;
.super Ljava/lang/Object;
.source "WorkspaceCellLayoutChildren.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->startGridChangeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

.field final synthetic val$cl:Lcom/android/launcher3/common/base/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v1

    aget v2, v0, v3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v1

    aget v2, v0, v6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    new-instance v2, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;-><init>(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v3, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->start()V

    goto :goto_0
.end method
