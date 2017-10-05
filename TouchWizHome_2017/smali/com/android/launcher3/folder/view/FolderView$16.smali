.class Lcom/android/launcher3/folder/view/FolderView$16;
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

.field final synthetic val$urgentItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;Lcom/android/launcher3/folder/view/FolderView$DropItem;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$urgentItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    iput-object p4, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$iconView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$urgentItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$urgentItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$iconView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/common/view/IconViewStub;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$iconView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/common/view/IconViewStub;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconViewStub;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/IconViewStub;->inflateInBackgroundUrgent(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$dropItem:Lcom/android/launcher3/folder/view/FolderView$DropItem;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/view/FolderView$DropItem;->fromApps:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    goto :goto_0

    :cond_2
    const-string v2, "FolderView"

    const-string v3, "onDropExtraObjects notifyFolderItemsChanged to apps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->notifyFolderItemsChanged()V

    :cond_3
    return-void
.end method
