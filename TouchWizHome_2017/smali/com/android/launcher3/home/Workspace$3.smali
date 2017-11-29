.class Lcom/android/launcher3/home/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenOnDrop(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$3;->this$0:Lcom/android/launcher3/home/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/home/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$3;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$3;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$3;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {v0, v2, v2, v1}, Lcom/android/launcher3/home/Workspace;->access$100(Lcom/android/launcher3/home/Workspace;IILjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$3;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$3;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_0
.end method
