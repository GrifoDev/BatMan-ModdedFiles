.class Lcom/android/launcher3/folder/view/FolderIconView$2;
.super Ljava/lang/Object;
.source "FolderIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderIconView;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$postDropRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p3, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->val$postDropRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->access$200(Lcom/android/launcher3/folder/view/FolderIconView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->access$300(Lcom/android/launcher3/folder/view/FolderIconView;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->val$postDropRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$2;->val$postDropRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
