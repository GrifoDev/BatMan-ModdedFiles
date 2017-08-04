.class Lcom/android/launcher3/folder/view/FolderView$15;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;

.field final synthetic val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

.field final synthetic val$iconView:Landroid/view/View;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$page:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$urgentItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;Lcom/android/launcher3/folder/view/FolderView$DropItem;Landroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$urgentItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    iput-object p4, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$iconView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p6, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$urgentItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$urgentItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$iconView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher3/common/view/IconView;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$iconView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$iconView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v3, v5}, Lcom/android/launcher3/folder/view/FolderView;->access$1202(Lcom/android/launcher3/folder/view/FolderView;Z)Z

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    iget-boolean v3, v3, Lcom/android/launcher3/folder/view/FolderView$DropItem;->fromApps:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iput-boolean v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    goto :goto_0

    :cond_3
    const-string v3, "Launcher.Folder"

    const-string v4, "onDropExtraObjects notifyFolderItemsChanged to apps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->notifyFolderItemsChanged()V

    :cond_4
    return-void
.end method
