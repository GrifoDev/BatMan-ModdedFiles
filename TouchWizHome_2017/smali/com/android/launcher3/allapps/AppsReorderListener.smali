.class public interface abstract Lcom/android/launcher3/allapps/AppsReorderListener;
.super Ljava/lang/Object;
.source "AppsReorderListener.java"


# virtual methods
.method public abstract getExistOverLastItemMoved()Z
.end method

.method public abstract makeEmptyCellAndReorder(II)V
.end method

.method public abstract realTimeReorder(IFIIII)V
.end method

.method public abstract realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V
.end method

.method public abstract removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V
.end method

.method public abstract removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/DragAppIcon;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/DragAppIcon;",
            ">;",
            "Lcom/android/launcher3/allapps/DragAppIcon;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setExistOverLastItemMoved(Z)V
.end method

.method public abstract setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
.end method

.method public abstract undoOverLastItems()V
.end method
