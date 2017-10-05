.class public interface abstract Lcom/android/launcher3/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpLogsToLocalData()V
.end method

.method public abstract isHomeNormal()Z
.end method

.method public abstract isTrayAnimating()Z
.end method

.method public abstract recreateLauncher()V
.end method

.method public abstract relayoutLauncher()V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract updateZeroPage(I)V
.end method
