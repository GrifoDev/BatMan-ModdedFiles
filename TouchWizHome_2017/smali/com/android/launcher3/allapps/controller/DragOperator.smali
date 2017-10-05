.class abstract Lcom/android/launcher3/allapps/controller/DragOperator;
.super Ljava/lang/Object;
.source "DragOperator.java"


# instance fields
.field mRestorePositionOnDrop:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/DragOperator;->mRestorePositionOnDrop:Z

    return-void
.end method


# virtual methods
.method acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/controller/DragOperator;->mRestorePositionOnDrop:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 0

    return-void
.end method

.method abstract animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V
.end method

.method abstract dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end method

.method dragStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->setRestorePosition(Z)V

    return-void
.end method

.method dropAddToExistingFolder()V
    .locals 0

    return-void
.end method

.method dropCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->setRestorePosition(Z)V

    return-void
.end method

.method abstract dropCompletedWithOutExtra(Z)V
.end method

.method dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 0

    return-void
.end method

.method dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method abstract dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation
.end method

.method dropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method getRestorePosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/DragOperator;->mRestorePositionOnDrop:Z

    return v0
.end method

.method makeEmptyCellAndReorderIfNecessary(II)V
    .locals 0

    return-void
.end method

.method onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 0

    return-void
.end method

.method abstract refreshObjectsToPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation
.end method

.method removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 0

    return-void
.end method

.method setRestorePosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/DragOperator;->mRestorePositionOnDrop:Z

    return-void
.end method

.method updateDirtyItemsToDb()V
    .locals 0

    return-void
.end method

.method abstract updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V
.end method
