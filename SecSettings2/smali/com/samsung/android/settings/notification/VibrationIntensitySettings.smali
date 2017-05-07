.class public Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private forceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "VibrationIntensity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method private initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private stopAllVibration()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->forceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f08013f

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->addPreferencesFromResource(I)V

    const-string/jumbo v4, "ring_vibration"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    const-string/jumbo v4, "notification_vibration"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    const-string/jumbo v4, "system_vibration"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    const-string/jumbo v4, "force_touch"

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->forceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "UPSM"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "ring_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "system_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->semIsForceTouchSupported()Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "force_touch"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onOptionsItemSelected : home"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onPause : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Vibrationintensity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onResume : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Vibrationintensity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
