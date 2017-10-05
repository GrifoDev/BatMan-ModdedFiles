.class Lcom/android/launcher3/home/Workspace$16;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->onConfigurationChangedIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher3/home/Workspace;->access$1502(Lcom/android/launcher3/home/Workspace;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$1600(Lcom/android/launcher3/home/Workspace;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$1700(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->finishBindingItems()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher3/home/Workspace;->access$1802(Lcom/android/launcher3/home/Workspace;I)I

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$000(Lcom/android/launcher3/home/Workspace;)V

    goto :goto_0
.end method
