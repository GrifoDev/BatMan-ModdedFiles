.class public Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;
.super Landroid/support/v14/preference/SecSwitchPreferenceScreen;
.source "SecRestrictedSettingsSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a06fe

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d0267

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsSwitchPreference;->setWidgetLayoutResource(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    return-void
.end method
