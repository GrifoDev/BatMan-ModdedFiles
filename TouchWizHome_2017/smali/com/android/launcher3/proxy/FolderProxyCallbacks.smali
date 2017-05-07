.class public interface abstract Lcom/android/launcher3/proxy/FolderProxyCallbacks;
.super Ljava/lang/Object;
.source "FolderProxyCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/proxy/BaseProxyCallbacks;


# virtual methods
.method public abstract addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract changeBackgroundColor(I)V
.end method

.method public abstract changeTitle(Ljava/lang/String;)V
.end method

.method public abstract getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;
.end method

.method public abstract getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
.end method

.method public abstract openBackgroundColorView()V
.end method

.method public abstract removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method
