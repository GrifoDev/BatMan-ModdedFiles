.class Lcom/android/launcher3/home/ZeroPageController$11;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->onZeroPageActiveChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$active:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$11;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-boolean p2, p0, Lcom/android/launcher3/home/ZeroPageController$11;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$11;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController$11;->val$active:Z

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$11;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    const-wide/16 v2, -0x12d

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController$11;->val$active:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$11;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController$11;->val$active:Z

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$11;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController$11;->val$active:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    goto :goto_0
.end method
