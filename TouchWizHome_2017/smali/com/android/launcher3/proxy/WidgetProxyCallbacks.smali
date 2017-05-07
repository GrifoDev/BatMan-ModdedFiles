.class public interface abstract Lcom/android/launcher3/proxy/WidgetProxyCallbacks;
.super Ljava/lang/Object;
.source "WidgetProxyCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/proxy/CommonProxyCallbacks;


# virtual methods
.method public abstract enterSearchState()V
.end method

.method public abstract enterUninstallState()V
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

.method public abstract getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
.end method

.method public abstract search(Ljava/lang/String;)I
.end method

.method public abstract uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V
.end method
