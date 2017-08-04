.class Lcom/android/launcher3/home/WorkspaceDragController$15;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$snapScreen:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$15;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$15;->val$snapScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$15;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$15;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$15;->val$snapScreen:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    return-void
.end method
