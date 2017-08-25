.class public Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiAdvancedSecSetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPoorNetworkDetection:Landroid/preference/SwitchPreference;

.field private mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mWifiState:I

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

.field private mWpsPinPref:Landroid/preference/Preference;

.field private mWpsPushPref:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPinPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPushPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->refreshWifiInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPushPref:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPinPref:Landroid/preference/Preference;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private RemoveNotUsedWpsButton()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private initPreferences()V
    .locals 7

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiState:I

    const-string/jumbo v4, "wifi_poor_network_detection"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "wifi_poor_network_detection_aggressive_mode"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->updateSmartNetworkSwitchVisible()V

    const-string/jumbo v4, "wps_push_button"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPushPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPushPref:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPushPref:Landroid/preference/Preference;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiState:I

    if-eq v4, v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPushPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string/jumbo v4, "wps_pin_entry"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPinPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPinPref:Landroid/preference/Preference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPinPref:Landroid/preference/Preference;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiState:I

    if-ne v4, v6, :cond_2

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsPinPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string/jumbo v4, "sleep_policy"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0c0057

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_4
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 13

    const v12, 0x7f0b15a0

    const v11, 0x7f0b149e

    const v9, 0x7f0b149d

    const v10, 0x7f0b0e24

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    const-string/jumbo v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v6, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u200f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u200f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_4

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private setIndicatorTransparency()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "messageExtra"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    const-string/jumbo v2, "WifiAdvancedSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v1, 0x1400

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x3400

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c0057

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

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

    const-string/jumbo v4, "WifiAdvancedSecSetupActivity"

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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0e66

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0e67

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$5;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "sleep_policy"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_sleep_policy"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v2

    const v5, 0x7f0b1438

    invoke-static {v1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->showDialog(I)V

    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->initPreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->refreshWifiInfo()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->setIndicatorTransparency()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_poor_network_detection"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "WifiAdvancedSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SNS enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "SNSU"

    if-eqz v0, :cond_2

    const-string/jumbo v1, "ON"

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->sendGSIMdata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "OFF"

    goto :goto_0
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

.method public onWpsPinBtnPressed()V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->RemoveNotUsedWpsButton()V

    return-void
.end method

.method public onWpsPushBtnPressed()V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->RemoveNotUsedWpsButton()V

    return-void
.end method

.method sendGSIMdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_2
    return-void
.end method
