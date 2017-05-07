.class public interface abstract Lcom/android/launcher3/common/base/controller/ControllerBase;
.super Ljava/lang/Object;
.source "ControllerBase.java"


# virtual methods
.method public abstract addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
.end method

.method public abstract addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
.end method

.method public abstract addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
.end method

.method public abstract addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;JJ)V"
        }
    .end annotation
.end method

.method public abstract deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
.end method

.method public abstract deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
.end method

.method public abstract getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
.end method

.method public abstract modifyItemsInDb(Ljava/util/ArrayList;JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;JI)V"
        }
    .end annotation
.end method

.method public abstract moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end method

.method public abstract notifyCapture(Z)V
.end method

.method public abstract notifyControllerItemsChanged()V
.end method

.method public abstract onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
.end method

.method public abstract replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
.end method

.method public abstract updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method
