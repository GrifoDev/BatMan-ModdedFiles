.class Lcom/android/launcher3/home/WorkspaceDragController$14;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iput-wide p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->val$screenId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setDeferRemoveExtraEmptyScreen(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const-wide/16 v2, -0x64

    iget-wide v4, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->val$screenId:J

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I
    invoke-static {v6}, Lcom/android/launcher3/home/WorkspaceDragController;->access$400(Lcom/android/launcher3/home/WorkspaceDragController;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget v7, v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController$14;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget v8, v8, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/home/HomeController;->addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V

    return-void
.end method
