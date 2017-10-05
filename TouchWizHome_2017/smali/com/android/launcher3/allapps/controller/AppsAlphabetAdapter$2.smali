.class Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;
.super Ljava/lang/Object;
.source "AppsAlphabetAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

.field final synthetic val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$infos:Ljava/util/ArrayList;

.field final synthetic val$isInApps:Z

.field final synthetic val$itemInfos:Ljava/util/ArrayList;

.field final synthetic val$oldParentId:J

.field final synthetic val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;ZJLcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$infos:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$isInApps:Z

    iput-wide p5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$oldParentId:J

    iput-object p7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p8, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$itemInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v5, v5, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "AppsAlphabetAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFolderAndAddItem ignore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$infos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    :cond_3
    const-string v5, "AppsAlphabetAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "already folder created "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$isInApps:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-wide v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$oldParentId:J

    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$targetItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$itemInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$itemInfos:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v5}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v5}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->access$100(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;)Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v2, v0}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->rearrangeAllViews(Z)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->addItemView(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    const-string v5, "createfolder for postposition"

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-string v5, "addItem to folder for postposition"

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->val$infos:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "AppsAlphabetAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postposition-createFolder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v7, v7, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v7, v7, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
