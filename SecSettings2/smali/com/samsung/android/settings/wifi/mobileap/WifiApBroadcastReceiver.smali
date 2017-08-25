.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I

.field private static mMaxClientNum:I


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    const-string/jumbo v0, "GATE"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isMobileApON(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi Manager is null, returning mobile ap not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v4
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v2, v0

    if-ne v2, v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    array-length v2, v0

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_6
    return v4
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, "WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    return v4
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setRvfMode(Landroid/content/Context;I)V
    .locals 4

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1b

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, -0x1

    const-string/jumbo v6, "WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    const-string/jumbo v6, "extra_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "req_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    if-ne p2, v10, :cond_1

    if-nez v1, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    add-int v6, v0, v1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v0, v10, :cond_1

    return-void

    :cond_1
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "req_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "extra_type"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private startHotspotExtenderModewarning(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotExtenderModewarning"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_provision_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method clearLimitDataReachNotification(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x7f0b0f0f

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0b0f0e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 58

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v49

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "onReceive: action "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " userID :"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    const/16 v53, 0x64

    move/from16 v0, v49

    move/from16 v1, v53

    if-lt v0, v1, :cond_1

    const/16 v53, 0xc8

    move/from16 v0, v49

    move/from16 v1, v53

    if-gt v0, v1, :cond_1

    :cond_0
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "do nothing, action is null or Knox userID:"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v53, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_17

    const-string/jumbo v53, "wifi_state"

    const/16 v54, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v53

    if-eqz v53, :cond_3

    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v53, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v53, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearLimitDataReachNotification(Landroid/content/Context;)V

    :cond_4
    const-string/jumbo v53, "ATT"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    :cond_5
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    :try_start_0
    const-string/jumbo v53, "wifi_ap_saved_state"

    move-object/from16 v0, v53

    invoke-static {v11, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_6

    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const-string/jumbo v53, "wifi_ap_saved_state"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_7

    const-string/jumbo v53, "SAMSUNG_HOTSPOT"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    const-string/jumbo v54, "PROVISIONING_RESULT"

    const/16 v55, 0x0

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v45

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "value of provisioning result is  and flag value "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "  "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget-boolean v55, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_8

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-eqz v53, :cond_b

    :cond_8
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    :cond_9
    :goto_2
    :pswitch_2
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v53, :cond_a

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_a

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v53

    if-eqz v53, :cond_a

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    invoke-interface/range {v53 .. v53}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string/jumbo v53, "PROVISIONING_RESULT"

    const/16 v54, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v53

    if-nez v53, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v53, v0

    if-nez v53, :cond_8

    const-string/jumbo v53, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_8

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xd

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_9

    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v53, "vzw_provision_result"

    const/16 v54, -0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v53, :cond_c

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "provisionValue.."

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    packed-switch v41, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_3
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    :pswitch_4
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_d
    if-nez v45, :cond_e

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_2

    :pswitch_5
    sget-boolean v53, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v53, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_mobile_data_limit"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_14

    const/16 v24, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_mobile_data_limit_value"

    invoke-static/range {v53 .. v54}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_mobile_data_usage_value"

    invoke-static/range {v53 .. v54}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v53, :cond_f

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Mobile AP data limited : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", limit data : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", usage data : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v24, :cond_10

    if-eqz v48, :cond_10

    move-object/from16 v0, v48

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_10

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Mobile AP usage data reached limit, show notification"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showLimitDataReachNotification(Landroid/content/Context;)V

    :cond_10
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    if-eqz v52, :cond_2

    new-instance v33, Landroid/os/Message;

    invoke-direct/range {v33 .. v33}, Landroid/os/Message;-><init>()V

    const/16 v53, 0x4d

    move/from16 v0, v53

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v53, "bigdata"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v53, "feature"

    const-string/jumbo v54, "MHSI"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v30, "not_support"

    const-string/jumbo v25, "swlan0"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_timeout_setting"

    sget v55, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v55, v55, 0x3c

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v53, "wifi_ap_wifi_sharing"

    const/16 v54, 0xa

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0xa

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_15

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Wifi Sharing first time provider value "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "wifi_ap_wifi_sharing"

    const/16 v56, 0xa

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v30, "-1"

    :goto_4
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v29

    const-string/jumbo v34, "CustomSSID"

    const-string/jumbo v7, "All"

    move-object/from16 v0, v29

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v53, v0

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_11

    const-string/jumbo v7, "Only"

    :cond_11
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Android"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Verizon"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Samsung"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Galaxy"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "SM-"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    :cond_12
    const-string/jumbo v34, "DefaultSSID"

    :cond_13
    const-string/jumbo v32, ""

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v29

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget v54, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Bigdata logging "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v53, "data"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v33

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_16

    const-string/jumbo v30, "sharing_on"

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v30, "sharing_off"

    goto/16 :goto_4

    :pswitch_6
    const/16 v53, 0x0

    sput v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->setRvfMode(Landroid/content/Context;I)V

    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v53

    if-eqz v53, :cond_2

    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_24

    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_18

    const-string/jumbo v53, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_18

    return-void

    :cond_18
    :try_start_1
    const-string/jumbo v53, "wifi_ap_plugged_type"

    move-object/from16 v0, v53

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v38

    :goto_5
    const-string/jumbo v53, "TMO"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1a

    const-string/jumbo v53, "NEWCO"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    :goto_6
    if-eqz v53, :cond_19

    if-nez v38, :cond_2

    :cond_19
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v40

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "ALARM_START : set "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " sec"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v40, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    move/from16 v0, v40

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v18, v54, v56

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v53, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    const-string/jumbo v53, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    const/16 v53, 0x0

    move/from16 v0, v53

    move-wide/from16 v1, v18

    move-object/from16 v3, v37

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const/16 v38, 0x0

    goto/16 :goto_5

    :cond_1a
    const/16 v53, 0x1

    goto/16 :goto_6

    :cond_1b
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_1c

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v53, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    const-string/jumbo v53, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1c
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_1d
    const/16 v53, 0x4

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_1e

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget v55, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v53, :cond_2

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1e
    const/16 v53, 0x1

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_23

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "ALARM_EXPIRE"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    const-string/jumbo v53, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/PowerManager;

    const-string/jumbo v53, "MobileAPCloseService"

    const/16 v54, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v54

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v27

    if-eqz v27, :cond_1f

    :try_start_2
    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1f
    :goto_7
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v50

    const/16 v51, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v40

    new-instance v33, Landroid/os/Message;

    invoke-direct/range {v33 .. v33}, Landroid/os/Message;-><init>()V

    const/16 v53, 0x3

    move/from16 v0, v53

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v35, 0x0

    :try_start_3
    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v35

    :goto_8
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "powermode_value = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v35, :cond_20

    const/16 v53, 0xd

    move/from16 v0, v50

    move/from16 v1, v53

    if-ne v0, v1, :cond_20

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v53

    if-eqz v53, :cond_21

    :cond_20
    :goto_9
    if-eqz v27, :cond_2

    :try_start_4
    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v27, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v15

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_2
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_8

    :cond_21
    if-eqz v40, :cond_20

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "--> ap disable"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_22

    const v53, 0x7f0b0f10

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/widget/Toast;->show()V

    :cond_22
    const-string/jumbo v53, "ATT"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_20

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    goto :goto_9

    :catch_3
    move-exception v15

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Cannot release wake lock ~~"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_23
    const/16 v53, 0x2

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_2

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "ALARM_STOP"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v53, :cond_2

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v53, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    const-string/jumbo v53, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v53, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_26

    const-string/jumbo v53, "wifiap_plug_state_changed_option"

    const/16 v54, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_25

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Unplugged"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v50

    const/16 v53, 0xd

    move/from16 v0, v50

    move/from16 v1, v53

    if-ne v0, v1, :cond_2

    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v53, :cond_2

    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Plugged"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v53, :cond_2

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_2

    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v53, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2e

    const-string/jumbo v53, "NUM"

    const/16 v54, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v4, :cond_27

    const/4 v4, 0x0

    :cond_27
    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    move/from16 v0, v53

    if-le v4, v0, :cond_28

    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    :cond_28
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "MaxClientNum1 = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget v55, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v53

    if-eqz v53, :cond_29

    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v53

    if-le v4, v0, :cond_2c

    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_a
    if-nez v4, :cond_2a

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_2d

    :cond_2a
    if-lez v4, :cond_2b

    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    :cond_2b
    :goto_b
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    :cond_2c
    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v53

    if-ge v4, v0, :cond_29

    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_2d
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_b

    :cond_2e
    const-string/jumbo v53, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2f

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v53, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_30

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xd

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v54, 0x5dc

    :try_start_5
    invoke-static/range {v54 .. v55}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_c
    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const/16 v53, 0x0

    const/16 v54, 0x1

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_4
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    :cond_30
    const-string/jumbo v53, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_32

    const-string/jumbo v53, "req_type"

    const/16 v54, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "onreceive WIFI_ENABLE_WARNING req_type:"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0xb

    move/from16 v0, v42

    move/from16 v1, v53

    if-ne v0, v1, :cond_31

    const/16 v53, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotExtenderModewarning(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_31
    const/16 v53, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v53, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_33

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    new-instance v33, Landroid/os/Message;

    invoke-direct/range {v33 .. v33}, Landroid/os/Message;-><init>()V

    const/16 v53, 0xc5

    move/from16 v0, v53

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v43

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v53, "reset_provider"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_35

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0xa

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFI_AP_WIFI_SHARING provider value after putting 10"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string/jumbo v56, "wifi_ap_wifi_sharing"

    invoke-static/range {v55 .. v56}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_34

    const-string/jumbo v53, "SAMSUNG_HOTSPOT"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    invoke-interface/range {v53 .. v53}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string/jumbo v53, "wifi_disconnect_do_not_show"

    const/16 v54, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v16

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Error in putting off provider value"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_35
    const-string/jumbo v53, "enable_provider"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_36

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Enabling Wifi Sharing "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget-boolean v55, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v53, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v53, :cond_2

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const/16 v53, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    goto/16 :goto_0

    :cond_36
    const-string/jumbo v53, "disable_provider"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_37

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Disabling Wifi Sharing "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget-boolean v55, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v53, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v53, :cond_2

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const/16 v53, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    goto/16 :goto_0

    :cond_37
    const-string/jumbo v53, "com.samsung.intent.action.START_PROVISIONING"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_3e

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_3e

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_38

    const-string/jumbo v53, "SAMSUNG_HOTSPOT"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    const-string/jumbo v54, "wifi_disconnect_do_not_show"

    const/16 v55, 0x0

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_3c

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_39

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Provisioning failed, mobile ap ON toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v53, 0x7f0b0ef5

    const/16 v54, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v53

    const v54, 0x102000b

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    const/16 v53, 0x11

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string/jumbo v56, "wifi_ap_wifi_sharing"

    invoke-static/range {v55 .. v56}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_d
    new-instance v31, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_6
    move-exception v16

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Error in putting off provider value"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_39
    const/16 v53, 0x1

    move/from16 v0, v21

    move/from16 v1, v53

    if-ne v0, v1, :cond_3a

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_3a

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Provisioning success, mobile ap ON toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v53, 0x7f0b0ef4

    const/16 v54, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v53

    const v54, 0x102000b

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    const/16 v53, 0x11

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3a
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Wi-fi got Disconnected before pop-up appears, Turn OFF MHS"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xd

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_3b

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_3b
    new-instance v44, Landroid/content/Intent;

    invoke-direct/range {v44 .. v44}, Landroid/content/Intent;-><init>()V

    const-class v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v53, 0x10000000

    move-object/from16 v0, v44

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v53, "wifiap_warning_dialog_type"

    const/16 v54, 0x7

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3c
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3d
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Start provisioning Wifi Sharing"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3e
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_40

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    if-eqz v22, :cond_3f

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_3f

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Wifi Sharing ON but provision failed toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v53, 0x7f0b0ef5

    const/16 v54, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v53

    const v54, 0x102000b

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    const/16 v53, 0x11

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string/jumbo v56, "wifi_ap_wifi_sharing"

    invoke-static/range {v55 .. v56}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_e
    new-instance v31, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_7
    move-exception v16

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Error in putting off provider value"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_3f
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Showing Wi-Fi Disconnect toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v53, "info_type"

    const/16 v54, 0x1e

    move-object/from16 v0, v20

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_40
    if-nez v22, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_2

    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Start Provisioning as Provisioning is needed"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_8
    move-exception v16

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method showLimitDataReachNotification(Landroid/content/Context;)V
    .locals 14

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const v6, 0x10808d0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0f10

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b19b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106005a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v5, 0x7f0b0f0f

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x7f0b0f0e

    const/4 v6, 0x0

    const v1, 0x108008a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {v2, p1, v4, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
