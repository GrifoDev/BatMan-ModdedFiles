.class Lcom/android/launcher3/home/WorkspaceDragController$5;
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

.field final synthetic val$animationStyle:I

.field final synthetic val$dragView:Lcom/android/launcher3/common/drag/DragView;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

.field final synthetic val$onAnimationCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object p4, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$onAnimationCompleteRunnable:Ljava/lang/Runnable;

    iput p5, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$animationStyle:I

    iput-object p6, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$finalView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$100(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$onAnimationCompleteRunnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$animationStyle:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$finalView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    return-void
.end method
