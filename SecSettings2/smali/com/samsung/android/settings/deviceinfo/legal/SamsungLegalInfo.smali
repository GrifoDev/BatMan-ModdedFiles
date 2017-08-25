.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SamsungLegalInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f0800d6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TFN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "warranty"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "end_user_license_agreement"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const-string/jumbo v7, "end_user_license_agreement"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string/jumbo v7, "arbitration_agreement"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v0, "com.sec.android.app.setupwizard.AA_NOTITLE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.app.setupwizard.EULA_NOTITLE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "arbitration_agreement"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.SecSetupWizard"

    const-string/jumbo v8, "com.sec.android.app.SecSetupWizard.eula2016.ArbitrationActivity"

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "FromSetupWizard"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method
