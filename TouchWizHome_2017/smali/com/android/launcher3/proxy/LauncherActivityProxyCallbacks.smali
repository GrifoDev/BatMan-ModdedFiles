.class public interface abstract Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;
.super Ljava/lang/Object;
.source "LauncherActivityProxyCallbacks.java"


# virtual methods
.method public abstract addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract canAppAddToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract changeHomeStyle(Z)V
.end method

.method public abstract clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract enableAllAppsBadge(Z)Z
.end method

.method public abstract enableSingleAppBadge(Ljava/lang/String;Z)Z
.end method

.method public abstract enterBadgeManagementView()V
.end method

.method public abstract enterHomeAboutPageView()V
.end method

.method public abstract enterHomeSettingChangeModeView()V
.end method

.method public abstract enterHomeSettingView()V
.end method

.method public abstract hideApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hideAppsButton()V
.end method

.method public abstract isAlreadySleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract isAvailableSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract isEnableAppsButton()Z
.end method

.method public abstract isHomeOnlyMode()Z
.end method

.method public abstract isSecureFolderSetup()Z
.end method

.method public abstract isSingleAppBadgeChecked(Ljava/lang/String;)Z
.end method

.method public abstract putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract showAppsButton()V
.end method

.method public abstract unHideApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method
