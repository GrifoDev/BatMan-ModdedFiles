.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ConfigureWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConfigureWifiSettings$1;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private avoidBadWifiConfig()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 3

    const-string/jumbo v0, "1"

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initPreferences()V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string/jumbo v11, "saved_networks"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v11, "notify_open_networks"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "wifi_networks_available_notification_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_7

    :goto_0
    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->avoidBadWifiConfig()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string/jumbo v9, "wifi_cellular_data_fallback"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string/jumbo v9, "wifi_assistant"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/AppListSwitchPreference;

    iput-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_2
    const-string/jumbo v9, "sleep_policy"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    if-eqz v6, :cond_6

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f0c0057

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_5
    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_sleep_policy"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    move v9, v10

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->avoidBadWifiCurrentSettings()Z

    move-result v2

    const-string/jumbo v9, "wifi_cellular_data_fallback"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/ConfigureWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    goto :goto_2
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
    iget-object v5, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/settings/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshWifiInfo()V
    .locals 9

    const v8, 0x7f0b15a1

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const-string/jumbo v6, "mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    const-string/jumbo v6, "current_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c0057

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v2, 0x7f0c0056

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "ConfigureWifiSettings"

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


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x152

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "wifi_assistant"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v7, v8}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    return v11

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v7, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ConfigureWifiSettings;->startActivity(Landroid/content/Intent;)V

    return v10

    :cond_1
    const-string/jumbo v7, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "packageName"

    iget-object v8, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "sleep_policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_sleep_policy"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1, v5}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v11

    :catch_0
    move-exception v2

    const v7, 0x7f0b1439

    invoke-static {v1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    return v10
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "notify_open_networks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "wifi_cellular_data_fallback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "1"

    :goto_2
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->initPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->refreshWifiInfo()V

    return-void
.end method
