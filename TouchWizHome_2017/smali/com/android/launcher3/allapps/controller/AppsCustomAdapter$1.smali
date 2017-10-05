.class Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;
.super Ljava/lang/Object;
.source "AppsCustomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

.field final synthetic val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$infos:Ljava/util/ArrayList;

.field final synthetic val$isInApps:Z

.field final synthetic val$itemInfos:Ljava/util/ArrayList;

.field final synthetic val$oldParentId:J

.field final synthetic val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/content/ContentValues;JLcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$infos:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$itemInfos:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$isInApps:Z

    iput-object p6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$values:Landroid/content/ContentValues;

    iput-wide p7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$oldParentId:J

    iput-object p9, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v6, v6, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "AppsCustomAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFolderAndAddItem ignore : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$infos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    :cond_3
    const-string v6, "AppsCustomAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "already folder created "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$itemInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$isInApps:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v3, v0}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$values:Landroid/content/ContentValues;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-wide v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$oldParentId:J

    invoke-interface {v6, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v3, v0}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$infos:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-interface {v6, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v6, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v7, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v7, v8

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v8, v8, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    invoke-interface {v6, v7, v8}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->makeEmptyCellAndReorder(II)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->addItemView(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-boolean v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mUpdateLocked:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->updateDirtyItems()V

    :cond_8
    const-string v6, "createfolder for postposition"

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-string v6, "addItem to folder for postposition"

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$infos:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v6, "AppsCustomAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "postposition-createFolder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v8, v8, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v8, v8, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->addItemView(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v6, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    goto :goto_2
.end method
