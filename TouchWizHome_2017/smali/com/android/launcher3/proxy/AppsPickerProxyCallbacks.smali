.class public interface abstract Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;
.super Ljava/lang/Object;
.source "AppsPickerProxyCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/proxy/CommonProxyCallbacks;


# virtual methods
.method public abstract addResultApps()V
.end method

.method public abstract addResultApps(I)V
.end method

.method public abstract addResultApps(Z)V
.end method

.method public abstract getItem(I)Lcom/android/launcher3/common/base/item/ItemInfo;
.end method

.method public abstract getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;
.end method

.method public abstract getItem(Ljava/lang/String;)Lcom/android/launcher3/common/base/item/ItemInfo;
.end method

.method public abstract getSearchResultListCheckedCount()I
.end method

.method public abstract getSearchResultListCount()I
.end method

.method public abstract getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
.end method

.method public abstract setSearchText(Ljava/lang/String;)Z
.end method
