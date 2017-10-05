.class Lcom/android/launcher3/home/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
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

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/home/Workspace$4;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    const/16 v1, 0x96

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace$4;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {v0, v3, v1, v2}, Lcom/android/launcher3/home/Workspace;->access$100(Lcom/android/launcher3/home/Workspace;IILjava/lang/Runnable;)V

    return-void
.end method
