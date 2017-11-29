.class Lcom/android/launcher3/folder/view/FolderView$19;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$19;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$19;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1700(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$19;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$600(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$19;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$19;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderView;->access$1000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/controller/ControllerBase;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V

    return-void
.end method
