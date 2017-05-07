.class public interface abstract Lcom/android/launcher3/proxy/BaseProxyCallbacks;
.super Ljava/lang/Object;
.source "BaseProxyCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/proxy/CommonProxyCallbacks;


# virtual methods
.method public abstract getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
.end method

.method public abstract getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
.end method

.method public abstract getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
.end method

.method public abstract getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
.end method

.method public abstract movePage(I)V
.end method

.method public abstract movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract selectItem(Lcom/android/launcher3/common/view/IconView;)V
.end method

.method public abstract unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
.end method
