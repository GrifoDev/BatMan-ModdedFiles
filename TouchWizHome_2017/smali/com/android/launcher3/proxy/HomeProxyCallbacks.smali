.class public interface abstract Lcom/android/launcher3/proxy/HomeProxyCallbacks;
.super Ljava/lang/Object;
.source "HomeProxyCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/proxy/BaseProxyCallbacks;


# virtual methods
.method public abstract addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
.end method

.method public abstract addNewHomePageInOverViewMode()V
.end method

.method public abstract addNewPage()V
.end method

.method public abstract alignHomeIcon(IZ)V
.end method

.method public abstract changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V
.end method

.method public abstract changeHomePageOrder(II)V
.end method

.method public abstract changeScreengrid(Ljava/lang/String;)V
.end method

.method public abstract checkAbleAlignIcon(IZ)Z
.end method

.method public abstract checkMatchGridOption(Ljava/lang/String;)Z
.end method

.method public abstract checkNeedDisplayAutoalignDialog()Z
.end method

.method public abstract checkValidGridOption(Ljava/lang/String;)Z
.end method

.method public abstract createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V
.end method

.method public abstract enterHomeEditView()V
.end method

.method public abstract enterHomeSettingGridSettingView()V
.end method

.method public abstract enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract exitSubState()V
.end method

.method public abstract getDefaultPage()I
.end method

.method public abstract getFolderItemCountByTitle(Ljava/lang/String;)I
.end method

.method public abstract getPageIndexForScreenId(J)I
.end method

.method public abstract getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;
.end method

.method public abstract hasPageDeleteButton(I)Z
.end method

.method public abstract hasPageEmptySpace(III)Z
.end method

.method public abstract isEmptyPage(I)Z
.end method

.method public abstract moveItem(Landroid/view/View;I)I
.end method

.method public abstract moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end method

.method public abstract neededToAdjustZeroPage()Z
.end method

.method public abstract removeCurrentPage()V
.end method

.method public abstract removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract removeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract setAsMainPage(I)V
.end method
