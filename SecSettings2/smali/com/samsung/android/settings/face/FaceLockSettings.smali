.class public Lcom/samsung/android/settings/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "FaceLockSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsFromSwitch:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    return-void
.end method

.method private closeSessionAndFinish()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Close Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->finish()V

    goto :goto_1
.end method

.method private initFaceLockSettings()V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_switch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    const-string/jumbo v2, "identifyFace"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    const-string/jumbo v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreviousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v2, :cond_3

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "initFaceLockSettings : preEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-void
.end method

.method private launchChooseLock()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_0
    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v2, "confirm_credentials"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private launchConfirmLock()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "launchConfirmLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    :cond_0
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const v0, 0x7f0b09c7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    const/16 v2, 0x3eb

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v9, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method private showCurrentLockTypeToast()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v3, "FcstFaceLockSettings"

    const-string/jumbo v4, "showCurrentLockTypeToast undefined lock type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :sswitch_0
    const v0, 0x7f0b07e7

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b07e9

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0b07e8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private showFaceTurnOnDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FaceLockSettings_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showRetryDialog()V
    .locals 4

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "showRetryDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0866

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0867

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0868

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/FaceLockSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/face/FaceLockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsLockSetup()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ed

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method

.method private startFaceRegister(Z)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "FcstFaceLockSettings"

    const-string/jumbo v7, "There is no enrolled face. Run startFaceRegister!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "always_finish_activities"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b0168

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f0b0778

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b076f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/face/FaceLockSettings$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v6, Lcom/samsung/android/settings/face/FaceLockSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0b0801

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    const-string/jumbo v7, "com.samsung.android.bio.face.service.enroll.FaceEnrollActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "hw_auth_token"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v6, "face_enroll_retry"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.USER_ID"

    iget v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "setupwizard_face"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "fromSetupwizard"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    const/16 v6, 0x11

    :try_start_0
    iput v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v7, 0x3ec

    invoke-virtual {p0, v3, v7, v6}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "FcstFaceLockSettings"

    const-string/jumbo v7, "runRegister : Activity Not Found !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1
.end method

.method private startFaceSettings(Landroid/content/Context;Z)V
    .locals 8

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    if-nez p1, :cond_1

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_2

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "needTurnOnCheck"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    const v3, 0x7f0b0913

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b0913

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startFasterRecognition()V
    .locals 4

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "Run FasterRecognition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceFasterRecognition"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ee

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startFasterRecognition : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method

.method private startRedactionInterstitial()V
    .locals 3

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "startRedactionInterstitial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "setupwizard_face"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "fromSetupwizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private startUseFaceLockSettings()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.UseFaceLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "tokenFromLock"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isSecured"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startUseFaceLockSettings : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v3, "FcstFaceLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " data is NULL : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v3, "intent is not null! Copy the token to result_intent"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "default : Not consider this case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_14

    const-string/jumbo v0, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceTurnOnDialog()V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong case! Couldn\'t be exist!(Unsecure, Face exist)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceTurnOnDialog()V

    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_3

    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "face_register_external"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is worng case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "FaceSettings_unlock_switch"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_10

    :cond_f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v0, "FaceSettings_register"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong case! Couldn\'t be exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "Set lockscreen failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showRetryDialog()V

    goto/16 :goto_1

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    if-eqz v0, :cond_16

    if-ne p2, v5, :cond_16

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFasterRecognition()V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v0, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne p2, v5, :cond_18

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_4

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_19

    move v1, v2

    :cond_19
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_1a
    const-string/jumbo v0, "FaceSettings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-ne p2, v5, :cond_1f

    if-eqz p3, :cond_1b

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_1b
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :cond_1c
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_1d
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_7
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_6

    :cond_1f
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_21

    move v1, v2

    :cond_21
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_7

    :cond_22
    const-string/jumbo v0, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-ne p2, v5, :cond_2a

    if-eqz p3, :cond_23

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_23
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceTurnOnDialog()V

    :goto_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_25
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_8

    :cond_26
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_28

    :goto_9
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_27
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_28
    move v2, v1

    goto :goto_9

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_a

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_2b

    move v1, v2

    :cond_2b
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v0, "FaceSettings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    if-ne p2, v5, :cond_30

    if-eqz p3, :cond_2e

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_2e
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_2f

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_b
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_31

    move v1, v2

    :cond_31
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_32
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_b

    :cond_33
    const-string/jumbo v0, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-ne p2, v5, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_34
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_c
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_36

    move v1, v2

    :cond_36
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_c

    :cond_38
    const-string/jumbo v0, "lock_screen_pin_pattern_password_biometrics"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-ne p2, v5, :cond_39

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :goto_d
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_39
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_d

    :cond_3a
    const-string/jumbo v0, "face_register_external"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_3b
    if-ne p2, v5, :cond_3d

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :cond_3d
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_2
    if-ne p2, v5, :cond_40

    if-eqz p3, :cond_3e

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_3e
    const-string/jumbo v1, "FcstFaceLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult: token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_1

    :cond_3f
    const-string/jumbo v0, "NULL"

    goto :goto_e

    :cond_40
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_3
    if-ne p2, v5, :cond_41

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_1

    :cond_41
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_4
    const-string/jumbo v0, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-ne p2, v5, :cond_43

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    :goto_f
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_10
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_42
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_f

    :cond_43
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_44

    move v1, v2

    :cond_44
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_10

    :cond_45
    const-string/jumbo v0, "FaceSettings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-ne p2, v5, :cond_4a

    if-eqz p3, :cond_46

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_46
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :cond_47
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_48
    :goto_11
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_12
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_49
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_11

    :cond_4a
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_4b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_4c

    move v1, v2

    :cond_4c
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_12

    :cond_4d
    const-string/jumbo v0, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    if-ne p2, v5, :cond_55

    if-eqz p3, :cond_4e

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_4e
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceTurnOnDialog()V

    :goto_13
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_4f

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_4f
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_50
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_13

    :cond_51
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_53

    :goto_14
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_52
    :goto_15
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_53
    move v2, v1

    goto :goto_14

    :cond_54
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_15

    :cond_55
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_56

    move v1, v2

    :cond_56
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_57

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_57
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_58
    const-string/jumbo v0, "FaceSettings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    if-ne p2, v5, :cond_5b

    if-eqz p3, :cond_59

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_59
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_5a

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_5a
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_16
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_5c

    move v1, v2

    :cond_5c
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_5d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_5d
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_16

    :cond_5e
    const-string/jumbo v0, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-ne p2, v5, :cond_60

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_5f

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_17
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_60
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_61

    move v1, v2

    :cond_61
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_62

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_62
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_17

    :cond_63
    const-string/jumbo v0, "lock_screen_pin_pattern_password_biometrics"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-ne p2, v5, :cond_64

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :goto_18
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_64
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_18

    :cond_65
    const-string/jumbo v0, "face_register_external"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_66

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_66
    if-ne p2, v5, :cond_67

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :cond_67
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "FcstFaceLockSettings"

    const v1, 0x7f0b0913

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->initFaceLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "setupwizard_face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "key_face_settings_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    if-eqz v0, :cond_a

    :cond_2
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "FaceSettings_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_d

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "FaceSettings_unlock_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "lock_screen_face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_f

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_11

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "face_register_external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_13

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_9

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_e

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_10

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_12

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_14

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public turnOffFaceLock()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "turnOffFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->overridePendingTransition(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->finish()V

    return-void
.end method

.method public turnOnFaceLock()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "turnOnFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->overridePendingTransition(II)V

    :cond_0
    const-string/jumbo v0, "key_face_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->finish()V

    return-void
.end method
