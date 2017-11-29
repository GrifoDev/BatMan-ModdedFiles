.class public Lcom/samsung/android/settings/multisound/MultiSoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "MultiSoundSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;,
        Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Landroid/preference/PreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mGuideView:Landroid/view/View;

.field private mInitState:I

.field private mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

.field private mSetApplication:Landroid/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createHeadrView()Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v8, 0x7f040340

    invoke-virtual {v2, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    const v9, 0x7f1105d8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    const v9, 0x7f1105d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    const v9, 0x7f1105d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.oneconnect"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v8, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v9, 0x8f0d180

    if-lt v8, v9, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    const v8, 0x7f0b0b93

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const v8, 0x7f020566

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    return-object v8

    :cond_2
    const v8, 0x7f0b0b94

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public moveSelectApp()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0b95

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->createHeadrView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->createHeadrView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "set_application"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "device_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SeparateAppSound"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->moveSelectApp()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 15

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0b96

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_devicetype"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v14, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    new-instance v7, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v7, v0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    const/4 v0, 0x1

    if-ne v11, v0, :cond_3

    :cond_2
    new-instance v10, Landroid/text/SpannableString;

    if-nez v11, :cond_6

    const v0, 0x7f0b0ba2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_3

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v10, v0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    :goto_2
    new-instance v13, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SeparateAppSound"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_6
    const v0, 0x7f0b0ba4

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    if-eq v11, v0, :cond_8

    if-eqz v14, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    if-eqz v14, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0b98

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0ba7

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b0ba8

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v1, 0x7f0b087e

    invoke-virtual {v9, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$4;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v9, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v12

    goto/16 :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 12

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_devicetype"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v2, v10, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b0b9a

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0b91

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const v10, 0x7f0b0b9c

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v9, 0x7f0b0ba0

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/samsung/android/settings/multisound/MultiSoundSettings$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$6;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100144

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz p2, :cond_5

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v9, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, p2}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    if-eqz p2, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v2, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-ne v2, v6, :cond_2

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1
.end method
