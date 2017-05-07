.class public interface abstract Lcom/android/launcher3/folder/FolderEventListener;
.super Ljava/lang/Object;
.source "FolderEventListener.java"


# virtual methods
.method public abstract onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end method

.method public abstract onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end method

.method public abstract onItemsAdded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemsRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
.end method

.method public abstract onOrderingChanged(Z)V
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method
