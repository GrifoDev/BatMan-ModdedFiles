.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onWifiStateChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdateAsync()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onWifiStateChanged(I)V

    goto :goto_0
.end method
