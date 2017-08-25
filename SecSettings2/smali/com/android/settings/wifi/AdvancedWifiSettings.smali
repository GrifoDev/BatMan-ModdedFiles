.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$1;,
        Lcom/android/settings/wifi/AdvancedWifiSettings$2;,
        Lcom/android/settings/wifi/AdvancedWifiSettings$3;,
        Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;,
        Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final VendorNotificationStyle:Ljava/lang/String;

.field private static final mEnableAutoConnectHotspot:Ljava/lang/String;

.field private static mIsComcastWifiSupported:Z

.field private static final mIsSupportAdpsMenu:Z


# instance fields
.field mAttAutoConnection:Landroid/preference/SwitchPreference;

.field private mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmLastStateID:Ljava/lang/String;

.field mEnableHs20:Landroid/preference/SwitchPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsNwdCmEnabled:Z

.field private mLastShownDialogKey:Ljava/lang/String;

.field mManagePref:Landroid/preference/Preference;

.field private mNetwiseIntentFilter:Landroid/content/IntentFilter;

.field private final mNetwiseReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

.field private mPoorNetworkDetection:Landroid/preference/Preference;

.field private mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowWifiPopup:Landroid/preference/SwitchPreference;

.field private mWifiAdps:Landroid/preference/SwitchPreference;

.field private mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mWillRespondToEm:Z

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

.field mWpsPinPref:Landroid/preference/Preference;

.field mWpsPushPref:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmLastStateID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWillRespondToEm:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableAutoConnectHotspot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsNwdCmEnabled:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsSupportAdpsMenu:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmLastStateID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsNwdCmEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWillRespondToEm:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isMobileHotstpotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateXfinitySetting(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->enableHotspot20ByBixby(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/wifi/AdvancedWifiSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/wifi/AdvancedWifiSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setSleepPolicykByBixby(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/wifi/AdvancedWifiSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showWpsDialogByBixby()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startManageNetworkByBixby()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_WIFI_SUPPORT_ADPS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsSupportAdpsMenu:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->VendorNotificationStyle:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableAutoConnectHotspot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mLastShownDialogKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsNwdCmEnabled:Z

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetection:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWillRespondToEm:Z

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private changeHotspot20(Z)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x29

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "enable"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-boolean v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeHotspot20 : enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "AdvancedWifiSettings"

    const-string/jumbo v3, "HOTSPOT20 config store error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private enableHotspot20()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const-string/jumbo v1, "USER_ON"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    return-void
.end method

.method private enableHotspot20ByBixby(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hotspot2.0AP"

    const-string/jumbo v2, "TurnedOn"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->enableHotspot20()V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hotspot2.0"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hotspot2.0"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const-string/jumbo v1, "USER_OFF"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hotspot2.0"

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hotspot2.0"

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method

.method private flushPreviousBigDataLogs()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mLastShownDialogKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sleep_policy"

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mLastShownDialogKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10003b

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    :cond_0
    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mLastShownDialogKey:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private initPreferences()V
    .locals 14

    const-string/jumbo v10, "wifi_adps"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_0

    sget-boolean v10, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsSupportAdpsMenu:Z

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    const-string/jumbo v10, "show_wifi_popup"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "wifi_offload_network_notify"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_16

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_2
    const-string/jumbo v10, "auto_connect_xfinity_wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    sget-boolean v10, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateXfinitySetting(Z)V

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_3
    const-string/jumbo v10, "notify_open_networks"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_NOTIFICATION_MENU:Z

    if-nez v10, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_4
    const-string/jumbo v10, "wifi_manage_network"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string/jumbo v10, "wps_push_button"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_5
    const-string/jumbo v10, "wps_pin_entry"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "KTT"

    sget-object v11, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_6
    const-string/jumbo v10, "wifi_scan_for_free_wlans"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_8

    const-string/jumbo v10, "WeChatWiFi"

    sget-object v11, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_7
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v10, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "install_as_uid"

    const/16 v11, 0x3f2

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "install_credentials"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_9
    const-string/jumbo v10, "wlan_permission_available"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v10

    if-eqz v10, :cond_20

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wlan_permission_available"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v2, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    :goto_9
    const-string/jumbo v10, "att_auto_connect"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    const-string/jumbo v10, "ATT"

    sget-object v11, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v10, "wifi_assistant"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/AppListSwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-static {v0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_d

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_21

    :cond_d
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    :goto_a
    const-string/jumbo v10, "wifi_connection_type"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    sget-boolean v10, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v10, :cond_22

    if-eqz v9, :cond_22

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_cmcc_manual"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v9, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_f
    :goto_b
    const-string/jumbo v10, "sleep_policy"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    if-eqz v6, :cond_11

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    const v10, 0x7f0c0057

    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_10
    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_sleep_policy"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_11
    const-string/jumbo v10, "wifi_hs20_enable"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0e9a

    invoke-static {v11, v12}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isPasspointMenuVisible()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_hotspot20_connected_history"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    :cond_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    goto/16 :goto_2

    :cond_18
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_19
    const-string/jumbo v10, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0e21

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0e22

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1a
    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "wifi_networks_available_notification_on"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1b

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    :cond_1b
    const/4 v10, 0x0

    goto :goto_c

    :cond_1c
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    new-instance v11, Lcom/android/settings/wifi/AdvancedWifiSettings$4;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_5

    :cond_1d
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    new-instance v11, Lcom/android/settings/wifi/AdvancedWifiSettings$5;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$5;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_6

    :cond_1e
    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_7

    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_20
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_21
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-virtual {v10, p0}, Lcom/android/settings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    goto/16 :goto_a

    :cond_22
    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b
.end method

.method private initSnsAggressiveModePreference()V
    .locals 3

    const-string/jumbo v0, "wifi_poor_network_detection"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetection:Landroid/preference/Preference;

    const-string/jumbo v0, "wifi_poor_network_detection_aggressive_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSmartNetworkSwitchVisible()V

    return-void
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iget-object v5, v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/settings/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isMobileHotstpotEnabled()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "AdvancedWifiSettings"

    const-string/jumbo v2, "isMobileHotstpotEnabled, Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdvancedWifiSettings"

    const-string/jumbo v2, "isWifiSharingEnabled, SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private modifyPreferences()V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsSupportAdpsMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiAdps:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_adps"

    invoke-static {v0, v4, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_b

    move v0, v10

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mShowWifiPopup:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v0, v4, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_c

    move v0, v10

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_NOTIFICATION_MENU:Z

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_networks_available_notification_on"

    invoke-static {v0, v4, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_d

    move v0, v10

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    const-string/jumbo v0, "wifi_scan_for_free_wlans"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_6

    const-string/jumbo v0, "WeChatWiFi"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_scan_for_free_wlans"

    invoke-static {v0, v3, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_e

    move v0, v10

    :goto_3
    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    const-string/jumbo v0, "ATT"

    sget-object v3, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getAutomaticConnectionToWifi"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "getAutomaticConnectionToWifi"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string/jumbo v0, "wifi_connection_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v0, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_8
    const-string/jumbo v0, "wifi_hs20_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isPasspointMenuVisible()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_hotspot20_connected_history"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_hotspot20_enable"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_11

    :goto_5
    invoke-virtual {v0, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_a
    return-void

    :cond_b
    move v0, v11

    goto/16 :goto_0

    :cond_c
    move v0, v11

    goto/16 :goto_1

    :cond_d
    move v0, v11

    goto/16 :goto_2

    :cond_e
    move v0, v11

    goto/16 :goto_3

    :cond_f
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_auto_connecct"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_10

    move v0, v10

    :goto_6
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_10
    move v0, v11

    goto :goto_6

    :cond_11
    move v10, v11

    goto :goto_5
.end method

.method private refreshWifiInfo()V
    .locals 13

    const v11, 0x7f0b149d

    const v12, 0x7f0b0e24

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    const-string/jumbo v10, "mac_address"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v6, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    :goto_1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0b149e

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v2, :cond_0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "wifi_hotspot20_enable"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_7

    :goto_3
    invoke-virtual {v10, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_3
    const v11, 0x7f0b15a0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    :goto_4
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0b149e

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v2, :cond_5

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    const v11, 0x7f0b15a0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move v8, v9

    goto :goto_3
.end method

.method private sendBroadcastToNetwiseClient(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.smithmicro.netwise.director.comcast.oem"

    const-string/jumbo v3, "com.smithmicro.mnd.SDKAPIReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK"

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private setSleepPolicykByBixby(I)V
    .locals 11

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_sleep_policy"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ltz p1, :cond_0

    if-le p1, v9, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "SleepPolicy"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WifiAdvanced"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    if-ne p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v4, 0x7f0c0057

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    if-ne p1, v9, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b055b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "SleepPolicy"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "SleepPolicy"

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WifiAdvanced"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2
    const v4, 0x7f0c0056

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b055a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    aget-object v2, v3, v7

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "AdvancedWifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEmCallback, change the value of the sleep policy from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "sleep_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_sleep_policy"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "SleepPolicy"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WifiAdvanced"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method private showWpsDialogByBixby()V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method private startManageNetworkByBixby()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->onManageNetworkMenuPressed()V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiManageNetworks"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method private startPoorNetworkDetectionPressed()V
    .locals 10

    const v3, 0x7f0b0e8b

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AdvancedWifiSettings"

    const-string/jumbo v1, "Can\'t start fragment, SNS disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-class v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c0057

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v4, v1

    if-ge v0, v4, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b055a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    const v2, 0x7f0c0056

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b055b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSmartNetworkSwitchVisible()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetection:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetection:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetection:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPoorNetworkDetection:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateXfinitySetting(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectXfinityWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b0ea2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b0ea1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid cmcc connect type value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initSnsAggressiveModePreference()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1

    const-string/jumbo v2, "extra_open_pref_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "extra_open_pref_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "AutoWiFi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startPoorNetworkDetectionPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "AdvancedWifiSettings"

    const-string/jumbo v3, "normal mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.mnd.action.RESUME_CM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100032

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onManageNetworkMenuPressed()V
    .locals 10

    const v3, 0x7f0b0e95

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "manage_network"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AdvancedWifiSettings"

    const-string/jumbo v1, "else"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->flushPreviousBigDataLogs()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mLastShownDialogKey:Ljava/lang/String;

    const-string/jumbo v15, "show_wifi_popup"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_offload_network_notify"

    if-eqz v9, :cond_3

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    const-string/jumbo v15, "frequency_band"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const-string/jumbo v15, "sleep_policy"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_sleep_policy"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v15

    const v16, 0x7f10003a

    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    const/4 v15, 0x1

    return v15

    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    sget-boolean v15, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    if-eqz v15, :cond_6

    const-string/jumbo v15, "auto_connect_xfinity_wifi"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v15, "com.smithmicro.mnd.action.RESUME_CM"

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/AdvancedWifiSettings;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v15, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    goto :goto_4

    :cond_6
    const-string/jumbo v15, "notify_open_networks"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_networks_available_notification_on"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const-string/jumbo v15, "att_auto_connect"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/4 v15, 0x1

    iput v15, v11, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "enable"

    invoke-virtual {v2, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_auto_connecct"

    if-eqz v9, :cond_9

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    const/4 v15, 0x0

    goto :goto_6

    :cond_a
    const-string/jumbo v15, "wifi_adps"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string/jumbo v15, "AdvancedWifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onPreferenceChange WIFI_ADPS : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_adps"

    if-eqz v9, :cond_b

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    const/4 v15, 0x0

    goto :goto_7

    :catch_0
    move-exception v4

    const v15, 0x7f0b0e63

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x0

    return v15

    :cond_c
    const-string/jumbo v15, "wifi_assistant"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    const/4 v15, 0x1

    return v15

    :cond_d
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v15, v14, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v15, :cond_e

    iget-object v15, v14, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v0, v14, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v15, 0x0

    return v15

    :cond_e
    const-string/jumbo v15, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "packageName"

    iget-object v0, v14, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    :cond_f
    const-string/jumbo v15, "wifi_hs20_enable"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v15

    const-string/jumbo v16, "USER_ON"

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v15

    const-string/jumbo v16, "USER_OFF"

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const v15, 0x7f0b1438

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x0

    return v15

    :cond_11
    const-string/jumbo v15, "wifi_connection_type"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_cmcc_manual"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/16 v15, 0xf

    iput v15, v11, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v16, "enable"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v15, "AdvancedWifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "KEY_WIFI_CONNECTION_TYPE onPreferenceChange connectionType :  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v15

    if-nez v15, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_cmcc_manual"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_12
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v16, 0x7f0b0e61

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v16, 0x7f0b1428

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x0

    return v15

    :cond_13
    const/4 v15, 0x0

    goto :goto_9

    :cond_14
    const-string/jumbo v15, "wifi_scan_for_free_wlans"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_scan_for_free_wlans"

    if-eqz v9, :cond_15

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v15, "com.samsung.android.net.wifi.WECHAT_ENABLED_SCANNING"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "enable"

    invoke-virtual {v7, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_15
    const/4 v15, 0x0

    goto :goto_a

    :cond_16
    const-string/jumbo v15, "wlan_permission_available"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wlan_permission_available"

    if-eqz v9, :cond_17

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_17
    const/4 v15, 0x0

    goto :goto_b
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->flushPreviousBigDataLogs()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_manage_network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->onManageNetworkMenuPressed()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "wifi_control_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startControlHistory()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "wifi_poor_network_detection_aggressive_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startPoorNetworkDetectionPressed()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sleep_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const v2, 0x7f100039

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mLastShownDialogKey:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_4
    const-string/jumbo v1, "install_credentials"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const v2, 0x7f10003c

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetwiseIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->modifyPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "show_wifi_popup"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_offload_network_notify"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsComcastWifiSupported:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "auto_connect_xfinity_wifi"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "com.smithmicro.mnd.action.RESUME_CM"

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "notify_open_networks"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_networks_available_notification_on"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    const-string/jumbo v4, "wifi_hs20_enable"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User triggered KEY_HS20_ENABLE: new value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->enableHotspot20()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v3

    const-string/jumbo v4, "USER_OFF"

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "wlan_permission_available"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wlan_permission_available"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    const-string/jumbo v4, "wifi_scan_for_free_wlans"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_for_free_wlans"

    if-eqz v1, :cond_b

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.net.wifi.WECHAT_ENABLED_SCANNING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "enable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    move v2, v3

    goto :goto_5

    :cond_c
    const-string/jumbo v4, "wifi_poor_network_detection"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onSharedPreferenceChanged SNS enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v1, :cond_d

    :goto_6
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v2, v3

    goto :goto_6
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public startControlHistory()V
    .locals 9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0eb5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AdvancedWifiSettings"

    const-string/jumbo v1, "else"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0e95

    const/4 v7, -0x1

    move-object v3, p0

    move-object v4, p0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method
