.class Lcom/android/launcher3/home/WorkspaceDragController$7;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$restoreExtraDropItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$7;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$7;->val$restoreExtraDropItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$7;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$7;->val$restoreExtraDropItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$400(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$7;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->access$500(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method
