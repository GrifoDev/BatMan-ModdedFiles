.class public Lcom/samsung/android/settings/CloudAccountSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/CloudAccountSettings$1;,
        Lcom/samsung/android/settings/CloudAccountSettings$2;,
        Lcom/samsung/android/settings/CloudAccountSettings$3;,
        Lcom/samsung/android/settings/CloudAccountSettings$4;,
        Lcom/samsung/android/settings/CloudAccountSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSmartSwitch:Landroid/preference/PreferenceScreen;

.field private mUserPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$1;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$4;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v2, 0x7f0b128f

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f08003a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "cloud_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f0b0c18

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledJanskyService(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "jansky_settings"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "cloud_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "smartswitch_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "cloud_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "my_profile_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "privacy_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "privacy_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "smartswitch_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->checkMyProfile(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "my_profile_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "account_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "account_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_4
    const-string/jumbo v5, "user_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string/jumbo v5, "user_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const-string/jumbo v5, "privacy_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "privacy_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "setupwizard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    :goto_1
    const-string/jumbo v5, "smartswitch_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    const-string/jumbo v5, "privacy_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "desktopmode"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void

    :cond_a
    const-string/jumbo v5, "my_profile_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b10c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "CloudAndAccounts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const/4 v10, 0x1

    const-string/jumbo v8, "cloud_preference"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v8, "my_profile_preference"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.easyMover"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x0

    const v8, 0x7f0b0c76

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const v9, 0x7f0b047a

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/CloudAccountSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/CloudAccountSettings$5;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const v10, 0x7f0b0640

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/CloudAccountSettings$6;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/CloudAccountSettings$6;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.easyMover"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v8, "CloudAccountSettings"

    const-string/jumbo v9, "not found activity"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1003e2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_0

    invoke-virtual {p2, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1003e3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "CloudAndAccounts"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method
