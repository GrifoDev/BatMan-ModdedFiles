.class public interface abstract Lcom/android/launcher3/proxy/AppsProxyCallbacks;
.super Ljava/lang/Object;
.source "AppsProxyCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/proxy/BaseProxyCallbacks;


# virtual methods
.method public abstract changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V
.end method

.method public abstract changeScreengrid(Ljava/lang/String;)V
.end method

.method public abstract checkMatchGridOption(Ljava/lang/String;)Z
.end method

.method public abstract checkValidGridOption(Ljava/lang/String;)Z
.end method

.method public abstract deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
.end method

.method public abstract hasPageEmptySpace(I)Z
.end method

.method public abstract hideViewTypePopup()V
.end method

.method public abstract moveItem(Lcom/android/launcher3/common/view/IconView;I)V
.end method

.method public abstract moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V
.end method

.method public abstract moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I
.end method

.method public abstract removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
.end method

.method public abstract showAppsGridSettingView()V
.end method

.method public abstract showTidyUpPreview()V
.end method

.method public abstract showViewTypePopup()V
.end method

.method public abstract startSecureFolder()V
.end method

.method public abstract tidyUpPages()V
.end method
