.class public interface abstract Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
.super Ljava/lang/Object;
.source "LauncherProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/proxy/LauncherProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppInfo"
.end annotation


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOrdinalNumber()I
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
