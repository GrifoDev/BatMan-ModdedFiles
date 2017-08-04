.class Lcom/android/launcher3/home/WorkspaceDragController$10;
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

.field final synthetic val$cancelDrop:Z

.field final synthetic val$secondObjects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$10;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$10;->val$secondObjects:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$10;->val$cancelDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$10;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$10;->val$secondObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/android/launcher3/home/WorkspaceDragController$10;->val$cancelDrop:Z

    const/4 v6, 0x1

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceDragController;->access$500(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    return-void
.end method
