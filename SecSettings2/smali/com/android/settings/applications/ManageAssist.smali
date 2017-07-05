.class public Lcom/android/settings/applications/ManageAssist;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageAssist$1;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageAssist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .locals 0

    sput-object p0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageAssist;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/ManageAssist$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageAssist$1;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1b95

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1b96

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/ManageAssist$3;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/applications/ManageAssist$3;-><init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b1b97

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b1b98

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateUi()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/ManageAssist$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageAssist$2;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method private updateUi()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5}, Lcom/android/settings/voice/VoiceInputListPreference;->refreshVoiceInputs()I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "assist_screenshot_enabled"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 0

    return-void
.end method

.method public exeOptAction()V
    .locals 0

    return-void
.end method

.method public exePrefAction()V
    .locals 20

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;Z)Z

    move-result v16

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v4

    if-nez v16, :cond_0

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_0
    const-string/jumbo v2, "DeviceAssistanceAppList"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v19

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePrefAction)size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePrefAction)queryAppName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :goto_0
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v13

    const/16 v17, -0x1

    const/4 v15, 0x0

    :goto_1
    array-length v2, v13

    if-ge v15, v2, :cond_4

    aget-object v2, v13, v15

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v17, v15

    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_9

    array-length v2, v13

    move/from16 v0, v17

    if-ge v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v17

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePrefAction)packageName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", matchedIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    const-string/jumbo v8, "AppName"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "yes"

    const-string/jumbo v11, "AppName"

    invoke-virtual/range {v5 .. v12}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method

.method public exeViewAction()V
    .locals 0

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "assist_structure_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceAssistanceApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assist_structure_enabled"

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100122

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->postUpdateUi()V

    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assist_screenshot_enabled"

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-ne p1, v2, :cond_7

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, ""

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f100120

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v5, "none"

    invoke-static {v2, v3, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v4

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    return v4

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return v4
.end method

.method public onResume()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v2, v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/applications/DefaultAssistPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "DeviceAssistanceApp"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "DeviceAssistanceAppList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public stopAction()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_0
    return-void
.end method
