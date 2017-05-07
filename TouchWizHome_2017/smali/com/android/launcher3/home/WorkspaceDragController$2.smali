.class Lcom/android/launcher3/home/WorkspaceDragController$2;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$finalAddItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$2;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$2;->val$finalAddItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$2;->val$cell:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$2;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$2;->val$finalAddItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController$2;->val$cell:Landroid/view/View;

    const/4 v4, 0x1

    # invokes: Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController;->access$100(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V

    return-void
.end method
