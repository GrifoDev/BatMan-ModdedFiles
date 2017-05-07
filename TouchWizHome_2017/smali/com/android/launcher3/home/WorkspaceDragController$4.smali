.class Lcom/android/launcher3/home/WorkspaceDragController$4;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->val$finalView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$4;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    # invokes: Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    invoke-static {v0, v3, v1, v3, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$100(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V

    return-void
.end method
