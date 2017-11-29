.class public Lcom/samsung/android/settings/notification/SoundModeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundModeSettings$1;,
        Lcom/samsung/android/settings/notification/SoundModeSettings$2;,
        Lcom/samsung/android/settings/notification/SoundModeSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIntervalTime:Lcom/android/settings/SecDropDownPreference;

.field private mMute:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mMuteIntervalOn:Landroid/preference/SwitchPreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSound:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mTemporaryMuteObserver:Landroid/database/ContentObserver;

.field private mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;


# direct methods
.method static synthetic -get0()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->updateControls()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundModeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings$1;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$3;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getRemainTimeString()Ljava/lang/String;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v8, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    const v8, 0x36ee80

    div-int v3, v2, v8

    const v8, 0xea60

    div-int v8, v2, v8

    rem-int/lit8 v6, v8, 0x3c

    const-string/jumbo v1, "%s %s"

    const-string/jumbo v0, "%s"

    const-string/jumbo v8, "SoundModeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRemainMins(), currentRemainTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130001

    invoke-virtual {v8, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v13, :cond_0

    const v8, 0x7f0b0ba6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130002

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    if-nez v2, :cond_1

    const/4 v8, 0x0

    return-object v8

    :cond_1
    if-nez v3, :cond_4

    if-lez v6, :cond_4

    :cond_2
    if-nez v3, :cond_6

    const-string/jumbo v8, "%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    const v10, 0x7f0b0bb3

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_4
    if-lez v3, :cond_5

    if-eqz v6, :cond_2

    :cond_5
    if-lez v3, :cond_3

    if-lez v6, :cond_3

    const-string/jumbo v8, "%s %s"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v4, v9, v11

    aput-object v5, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    if-nez v6, :cond_3

    const-string/jumbo v8, "%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private init()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v1, "SoundModeSettings"

    const-string/jumbo v2, "init() start"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f080128

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$4;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "vibrate"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$5;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "mute"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$6;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "temporary_mute"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$7;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "mute_duration"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    new-array v2, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130001

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f0b0ba6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130001

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0273

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    new-array v2, v10, [Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$8;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "vibrate"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->updateControls()V

    const-string/jumbo v1, "SoundModeSettings"

    const-string/jumbo v2, "init() end"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerListenersAndObserver()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SoundModeSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$9;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer_time_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseListenersAndObserver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateControls()V
    .locals 14

    const v13, 0x7f0b0bb1

    const v12, 0x7f0b0baf

    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string/jumbo v6, "SoundModeSettings"

    const-string/jumbo v7, "updateControls() start"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    sget-object v6, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mode_ringer_time_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v6, "SoundModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateControls(), currentRingerMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " currentMuteInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " currentMuteIntervalOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v11}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v11}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v11}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    const/4 v6, 0x2

    if-ne v6, v2, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :goto_1
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getRemainTimeString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v12}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(I)V

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v6, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_3
    sget-object v6, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    const-string/jumbo v6, "SoundModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currentMuteInterval : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x3c

    if-eq v0, v6, :cond_0

    const/16 v6, 0x78

    if-ne v0, v6, :cond_7

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    div-int/lit8 v7, v0, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    :goto_4
    sget-object v6, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "temporary_mute"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v6, "mute_duration"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    :goto_5
    iput-boolean v11, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    const-string/jumbo v6, "SoundModeSettings"

    const-string/jumbo v7, "updateControls() end"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    if-ne v9, v2, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x28

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x10301b3

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v6, v12}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(I)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0bae

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v10, 0x7f0b150b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    const/16 v6, 0xb4

    if-eq v0, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    if-nez v1, :cond_1

    const-string/jumbo v6, "mute_duration"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    sget-object v1, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v6

    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x36ee80

    div-int v3, v6, v2

    const v2, 0xea60

    div-int v2, v6, v2

    rem-int/lit8 v4, v2, 0x3c

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const v1, 0x7f0b0bb2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/SemTimePickerDialog;->setTitle(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->releaseListenersAndObserver()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoundsModeSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->registerListenersAndObserver()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SoundModeSettings"

    const-string/jumbo v1, "onTimeSet from timePicker set new MuteInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->updateControls()V

    return-void
.end method
