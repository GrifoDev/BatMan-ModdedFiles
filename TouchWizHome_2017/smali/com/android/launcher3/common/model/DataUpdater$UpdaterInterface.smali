.class public interface abstract Lcom/android/launcher3/common/model/DataUpdater$UpdaterInterface;
.super Ljava/lang/Object;
.source "DataUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DataUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdaterInterface"
.end annotation


# virtual methods
.method public abstract addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
.end method

.method public abstract deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method
