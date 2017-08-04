.class Lcom/android/launcher3/home/WorkspaceDragController$9;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$finalAddItems:Ljava/util/ArrayList;

.field final synthetic val$isFromHomeFolder:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$9;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$9;->val$finalAddItems:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$9;->val$isFromHomeFolder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$9;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$9;->val$finalAddItems:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController$9;->val$isFromHomeFolder:Z

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$100(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V

    return-void
.end method
