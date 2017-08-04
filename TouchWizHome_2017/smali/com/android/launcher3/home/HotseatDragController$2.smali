.class Lcom/android/launcher3/home/HotseatDragController$2;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HotseatDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatDragController;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController$2;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/HotseatDragController$2;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController$2;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v0}, Lcom/android/launcher3/home/HotseatDragController;->access$000(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController$2;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const-wide/16 v2, -0x65

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController$2;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v6}, Lcom/android/launcher3/home/HotseatDragController;->access$100(Lcom/android/launcher3/home/HotseatDragController;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/home/HotseatDragController$2;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget v7, v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    iget-object v8, p0, Lcom/android/launcher3/home/HotseatDragController$2;->val$info:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget v8, v8, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/home/HomeController;->addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V

    return-void
.end method
