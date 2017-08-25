.class public Lcom/android/settings/fingerprint/FingerprintLockSettings;
.super Landroid/app/Activity;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final isEnableSurveyMode:Z


# instance fields
.field private SCREEN_ID_SET_FINGER_LOCK:I

.field private descriptionTextView:Landroid/widget/TextView;

.field private laterBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field private mDisplayKnoxName:Ljava/lang/String;

.field private mFingerprintLockMain:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintlockEnable:Z

.field private mFromSetupwizard:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasFingerprint:Z

.field private mIdentifyFingerprint:Z

.field private mInitializedUI:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsDirectionLock:Z

.field private mIsEnterpriseIDFingerprint:Z

.field private mIsFinish:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsKnoxLockPasswordScreen:Z

.field private mIsSecured:Z

.field private mIsSharedDevice:Z

.field private mKnoxIdentifyOnlyFingerprint:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOnlyIdentifyFingerprint:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z

.field private okBtn:Landroid/widget/Button;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/fingerprint/FingerprintLockSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFinish:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFinish:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintLockSettings;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintLockSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchToPrivateBoxLock()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintLockSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->isEnableSurveyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintlockEnable:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsKnoxLockPasswordScreen:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFinish:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    return-void
.end method

.method private getDescription()Ljava/lang/String;
    .locals 10

    const v2, 0x7f0b07e2

    const v9, 0x7f0b07e1

    const v3, 0x7f0b07e0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v0, ""

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v4, "FpstFingerprintLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "passwordQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "lock_screen_pin_pattern_password"

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "description : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0b07e4

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    const v2, 0x7f0b07d7

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v2, 0x7f0b07e3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0b07e4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    const v2, 0x7f0b07d9

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v2, 0x7f0b07e3

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0b07e4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    const v2, 0x7f0b07d8

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v2, 0x7f0b07e3

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0b07e4

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    const v2, 0x7f0b02f0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f0b07e3

    goto :goto_4

    :cond_5
    const-string/jumbo v4, "fingerprint_settings_add_fingerprint"

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_6

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b137e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b1380

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b1382

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b137e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_6
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b02e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_6

    :sswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_7
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1380

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto :goto_7

    :sswitch_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_8
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1382

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_8

    :cond_a
    move v2, v3

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v2, "lock_screen_pin_pattern_password_upgragde"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_0

    :sswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_3
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_4
        0x10001 -> :sswitch_5
        0x20000 -> :sswitch_6
        0x30000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x10000 -> :sswitch_8
        0x10001 -> :sswitch_9
        0x20000 -> :sswitch_a
        0x30000 -> :sswitch_a
        0x40000 -> :sswitch_b
        0x50000 -> :sswitch_b
        0x60000 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10000 -> :sswitch_c
        0x10001 -> :sswitch_f
        0x20000 -> :sswitch_d
        0x30000 -> :sswitch_d
        0x40000 -> :sswitch_e
        0x50000 -> :sswitch_e
        0x60000 -> :sswitch_e
    .end sparse-switch
.end method

.method private identifyFinger()I
    .locals 5

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "identifyFinger"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "password"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintLockSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method private initFingerprintLockSettings()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "initFingerprintLockSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "fingerprintlockEnable"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintlockEnable:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "identifyFingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "onlyIdentify"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "fingerprintlockmain"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "mKnoxIdentifyOnly"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "fromSetupwizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const v3, 0x10001

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "is_knox"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "is_knox_two_step"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "displayKnoxName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isSharedDevice"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isEnterpriseIDFingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsEnterpriseIDFingerprint:Z

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDisplayKnoxName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsFromKnoxSetCases:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsFromKnoxTwoStep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[previousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[identifyFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[fingerprintlockmain] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSecured] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[fromSetupwizard] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[hasFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isDirectionLock] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "disable_systemkey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "WasSecureBefore"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    goto :goto_2
.end method

.method private initFingerprintLockSettingsUI(Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "initFingerprintLockSettingsUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintScreenLockDisable()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    const v0, 0x7f0f02fa

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setContentView(I)V

    const v0, 0x7f1103eb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->laterBtn:Landroid/widget/Button;

    const v0, 0x7f1103ec

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->okBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->laterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b07d5

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->okBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b07e4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup_Display"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_1
    const v0, 0x7f1103ea

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->descriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->descriptionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "initFingerprintLockSettingsUI: iris is set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    return-void

    :cond_3
    const v0, 0x7f0b07e3

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const v0, 0x7f0b07d6

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->okBtn:Landroid/widget/Button;

    const v1, 0x7f0b088a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->laterBtn:Landroid/widget/Button;

    const v1, 0x7f0b0889

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "descriptionTextView is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showFingerprintLockSettingsDialog()V

    goto/16 :goto_2
.end method

.method private insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/fingerprint/FingerprintLockSettings;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintLockSettings;->isEnableSurveyMode:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private launchChooseLock(J)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const-string/jumbo v2, "challenge"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    const-string/jumbo v2, "disable_systemkey"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x3ea

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private launchRedactionInterstitial()V
    .locals 5

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchRedaction [previousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchRedaction [mWasSecureBefore] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    if-nez v2, :cond_2

    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fingerprint_settings_add_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "launchRedaction [startActivity]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "fromSetupWizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "launchRedactionInterstitial : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchToPrivateBoxLock()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_private_box_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "changed_lock_type"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_private_box_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FpstFingerprintLockSettings"

    const-string/jumbo v4, "launchToPrivateBoxLock : Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recognizeFingerprint()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "recognizeFingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v1, :cond_2

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "mSecFingerprintManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b0771

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "Mobile keyboard attached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showMobileKeyboardToastMsg()V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->identifyFinger()I

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "identifyFinger start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    return-void

    :cond_5
    const/4 v1, -0x4

    if-ne v0, v1, :cond_6

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "RESULT_DATABASE_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "FpstFingerprintLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Other Error occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "runRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Mobile keyboard attached"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showMobileKeyboardToastMsg()V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const v3, 0x7f0b0913

    invoke-static {p0, v3, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    if-ne p1, v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxSetupWizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isSharedDevice"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_fingerprint"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_6

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    :cond_6
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private runRegisterForKnox()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    return-void

    :cond_0
    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method private sendSurveyForLockScreen(Z)V
    .locals 8

    const/4 v4, 0x1

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSurveyForLockScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previousStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, ""

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v7

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passwordQuality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v3, "Fingerprint"

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Iris"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Face"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sparse-switch v7, :sswitch_data_0

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There was no digital lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extraValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_3

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    return-void

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DirectionLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_3
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private setFingerprintLock()V
    .locals 8

    const/4 v0, 0x5

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "setFingerprintLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintScreenLockEnable()V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock enabled : fingerprint"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    const/4 v2, 0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_pin_pattern_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "lock_screen_pin_pattern_password_biometrics"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    const-string/jumbo v3, "Setupwizard"

    :goto_0
    if-eqz v3, :cond_3

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPLE"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v1, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "lock_screen_pin_pattern_password_upgragde"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "lock_screen_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "google_setupwizard_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string/jumbo v3, "Setupwizard"

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "sec_setupwizard_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "fingerprint_settings_add_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v3, "FingerprintSettingsAdd"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v3, "FingerprintSettingsUnlock"

    goto :goto_0

    :cond_8
    const-string/jumbo v3, "LockScreen"

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong previous stage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method private setFingerprintScreenLockEnable()V
    .locals 5

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "setFingerprintScreenLockEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showChooseLockKnoxPassword(Z)V
    .locals 14

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "[KNOX FINGERPRINT] : showChooseLockKnoxPassword. [TODO] : needs to set more policy for knox bp"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100408

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    const/high16 v3, 0x40000

    if-le v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v0, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v12

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    add-int v0, v11, v10

    if-le v0, v9, :cond_1

    add-int v9, v11, v10

    :cond_1
    add-int v0, v12, v8

    if-le v0, v7, :cond_2

    add-int v7, v12, v8

    :cond_2
    add-int v0, v9, v7

    if-le v0, v6, :cond_3

    add-int v6, v9, v7

    const-string/jumbo v0, "lockscreen.password_min"

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10040a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10040b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10040c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10040d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10040e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10040f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100409

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const-string/jumbo v0, "lockscreen.password_min"

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v0, "lockscreen.password_min_uppercase"

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "lockscreen.password_min_lowercase"

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "lockscreen.password_min_symbols"

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "lockscreen.password_min_numeric"

    invoke-virtual {v13, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "lockscreen.password_min_letters"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isFromKnoxFinger"

    const/4 v3, 0x1

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_7

    const-string/jumbo v0, "isFromKnoxFingerForSwitch"

    const/4 v3, 0x1

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3eb

    invoke-virtual {p0, v13, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v1, 0x50000

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100409

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const/high16 v1, 0x40000

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x3ea

    invoke-virtual {p0, v13, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b076e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07bc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$6;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$7;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFingerprintLockSettingsDialog()V
    .locals 12

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "showFingerprintLockSettingsDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, ""

    const-string/jumbo v10, ""

    const-string/jumbo v9, ""

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getDescription()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b07e4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup_Display"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_1
    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0b07e3

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b088a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private showMobileKeyboardToastMsg()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0b0769

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b0821

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    const v1, 0x7f0b0771

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f0b0772

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b076e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$8;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$9;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string/jumbo v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setIndicatorTransparency()V

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsLockSetup()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v3, "FpstFingerprintLockSettings"

    const-string/jumbo v4, "startBiometricsLockSetup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "google_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "fromSetupwizard"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/16 v3, 0x3ed

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_2
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v3, "FpstFingerprintLockSettings"

    const-string/jumbo v4, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "intent is not null! Copy the token to result_intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v9, :cond_15

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsEnterpriseIDFingerprint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsEnterpriseIDFingerprint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    const-string/jumbo v0, "previousStage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previousStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v0, :cond_7

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchToPrivateBoxLock()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsEnterpriseIDFingerprint:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_screen_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    :cond_12
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup_Complete"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_13
    const-string/jumbo v0, "google_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v0, :cond_6

    :cond_14
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPSW"

    const-string/jumbo v3, "Register"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint Registration failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_1b

    :cond_16
    const-string/jumbo v0, "lock_screen_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_1b

    :cond_17
    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_1b

    :cond_18
    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_1b

    :cond_1a
    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1b
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    goto/16 :goto_2

    :sswitch_1
    if-ne p2, v10, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_2
    if-ne p2, v10, :cond_28

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0808

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1c
    :goto_4
    const-string/jumbo v0, "lock_screen_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0806

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07e5

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_1f
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v6

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passwordQuality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v6, :sswitch_data_1

    :goto_5
    if-eqz v8, :cond_1c

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_20
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! There is no fingeprint, no lock case! Launch the RegisterFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v0, "google_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_22
    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_24
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Direction lock changed! There is no fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void

    :cond_25
    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "ChooseLock performed successfully! Enable Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "DirectionLock is changed to P/P/P! Register Fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void

    :cond_28
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Set lockscreen failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_7
    if-ne p2, v10, :cond_2a

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    :goto_6
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "KNOXNOTICE_REQUEST_CODE got RESULT_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_6

    :cond_2a
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "KNOXNOTICE_REQUEST_CODE got RESULT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_8
    if-ne p2, v9, :cond_2b

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_7
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ed -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_5
        0x10001 -> :sswitch_6
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchToPrivateBoxLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v10, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v7

    if-eqz v6, :cond_2

    const v0, 0x186c8

    if-eq v7, v0, :cond_3

    const v0, 0x186c9

    if-eq v7, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick isHardwareDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestGetSensorStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0771

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_3
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Launch Register fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    :cond_4
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint already exist! Set Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup_Complete"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchToPrivateBoxLock()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "OS upgrade case! Set Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchToPrivateBoxLock()V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint lock screen enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1103eb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->initFingerprintLockSettings()V

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const v2, 0x7f0b0913

    invoke-static {p0, v2, v1}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_1

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0771

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "FingerprintSettings - Set as screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintlockEnable:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Secured Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_2
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - Pattern/PIN/Password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-eqz v0, :cond_18

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - Pattern/PIN/Password with Biometrics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "lock_screen_pin_pattern_password_biometrics"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "lock_screen_pin_pattern_password_upgragde"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - OS Upgrade with P/P/P"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->initFingerprintLockSettingsUI(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "lock_screen_fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "LockScreen - Fingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-lt v1, v5, :cond_7

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "There is no fingerprint. Register fingerprint!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    if-lt v1, v5, :cond_9

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    :cond_8
    if-nez v0, :cond_9

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_1b

    :cond_a
    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "FingerprintSettings - Add fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    if-nez v0, :cond_22

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint isn\'t main lock type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_21

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->initFingerprintLockSettingsUI(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "google_setupwizard_fingerprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Google Setupwizard - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "SEC Setupwizard - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_f
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Current status is Direction lock! Launch Choose lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened. Because if device already secured and has the fingerprint, FingerprintSettings Activity set the fingeprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Current status is Direction lock! Launch Choose lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Nonsecured Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened. Because FingerprintSettings Activity unset the fingeprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintScreenLockDisable()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_17
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_0

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->initFingerprintLockSettingsUI(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_1b
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_0

    :cond_1c
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_1f

    :cond_1d
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_20

    :cond_1e
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "[KNOX FINGERPRINT] : START recognizeFingerprint() in FingerExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_0

    :cond_1f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_0

    :cond_20
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint is main lock type! This case doesn\'t need UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened. Because if device was already secured and has the fingerprint, this step must be skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Nonsecured Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_26
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100250

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchToPrivateBoxLock()V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->sendSurveyForLockScreen(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
