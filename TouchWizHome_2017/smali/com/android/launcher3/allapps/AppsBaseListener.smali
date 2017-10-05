.class public interface abstract Lcom/android/launcher3/allapps/AppsBaseListener;
.super Ljava/lang/Object;
.source "AppsBaseListener.java"

# interfaces
.implements Lcom/android/launcher3/common/base/controller/ControllerBase;


# virtual methods
.method public abstract addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;
.end method

.method public abstract changeState(IZ)Z
.end method

.method public abstract createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract findFirstEmptyCell(I)I
.end method

.method public abstract getAppsIconByItemId(J)Landroid/view/View;
.end method

.method public abstract isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeEmptyPagesAndUpdateAllItemsInfo()Z
.end method

.method public abstract repositionByNormalizer(Z)V
.end method

.method public abstract updateBadgeItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCountBadge(Landroid/view/View;Z)V
.end method

.method public abstract updateDirtyItems()V
.end method
