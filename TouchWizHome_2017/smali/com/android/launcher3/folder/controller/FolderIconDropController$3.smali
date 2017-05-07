.class Lcom/android/launcher3/folder/controller/FolderIconDropController$3;
.super Ljava/lang/Object;
.source "FolderIconDropController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field final synthetic val$fi:Lcom/android/launcher3/folder/view/FolderIconView;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Ljava/lang/Runnable;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iput-object p2, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->val$fi:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/16 v0, 0x96

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/folder/controller/FolderIconDropController$3$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController$3$1;-><init>(Lcom/android/launcher3/folder/controller/FolderIconDropController$3;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
