.class public interface abstract Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;
.super Ljava/lang/Object;
.source "AppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getAppsIconByItemId(J)Landroid/view/View;
.end method

.method public abstract getCellCountX()I
.end method

.method public abstract getMaxItemsPerScreen()I
.end method

.method public abstract makeEmptyCellAndReorder(II)V
.end method

.method public abstract needDeferredUpdate()Z
.end method

.method public abstract rearrangeAllViews(Z)V
.end method

.method public abstract removeAllViews()V
.end method

.method public abstract removeApps(Ljava/util/ArrayList;)V
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

.method public abstract removeEmptyCellsAndViews(Ljava/util/ArrayList;)V
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

.method public abstract updateApps(Ljava/util/ArrayList;)V
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

.method public abstract updateGridInfo()V
.end method

.method public abstract updateRestoreItems(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method
