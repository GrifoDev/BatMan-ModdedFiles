.class public Lcom/samsung/android/settings/DomesticSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DomesticSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DomesticSettings$1;,
        Lcom/samsung/android/settings/DomesticSettings$2;,
        Lcom/samsung/android/settings/DomesticSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mTwoPhonePreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v0, "two_phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/preference/PreferenceScreen;

    return-void

    :cond_0
    const-string/jumbo v0, "giga_lte"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v2, "giga_lte"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "mptcp_value"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0b1bda

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f0b1bdb

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method
