.class public Lcom/samsung/android/settings/iris/IrisLockSettings;
.super Landroid/app/Activity;
.source "IrisLockSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisLockSettings$1;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$2;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private dialogButton:Landroid/widget/Button;

.field private disclaimerDialog:Landroid/app/AlertDialog;

.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mDisplayKnoxName:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mFromIrisFeature:Z

.field private mFromIrisSettings:Z

.field private mFromIrisUnlock:Z

.field private mFromOutside:Z

.field private mFromSetupWizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsEnterpriseIDIris:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsFromSharedDevice:Z

.field private mIsKnoxLockPasswordScreen:Z

.field private mKeepToken:Z

.field private mKnoxUserId:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mRequestCode:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:[B

.field private mTurnOffTransition:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisLockSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->dialogButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/iris/IrisLockSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/iris/IrisLockSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/iris/IrisLockSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->saveFirstEnroll()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepToken:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private initLockSettings()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v1, "initFingerprintLockSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "lock_screen_iris"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mUserPassword:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "is_knox"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "fromOutSide"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "is_knox_two_step"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isFromSharedDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "displayKnoxName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_setupwizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isEnterpriseIDIris"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIDIris:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "keep_token"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepToken:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_irisSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "knox_userId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[previousStage] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[KNOX IRIS] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDisplayKnoxName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "iris_settings"

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private isFirstEnroll()I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "iris_setting"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "isFirstIrisEnroll"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private launchBioAuth()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "for_iris_authentication"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x6a

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchChooseLock()V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v2, "IrisLockSettings"

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

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x64

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchConfirmLock()V
    .locals 8

    const/4 v4, 0x0

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f0b08bd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    const/16 v2, 0x63

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private launchConfirmLockForKnox()V
    .locals 8

    const/4 v4, 0x0

    const-string/jumbo v0, "IrisLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchConfirmLockForKnox : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f0b1337

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    const/16 v2, 0x69

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private launchIrisSettings()V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    if-nez v0, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    if-eqz v0, :cond_1

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepToken:Z

    :cond_1
    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "fromSearch"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    const-string/jumbo v1, "iris_samsung_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    const-string/jumbo v1, "iris_samsung_pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startFragment subMenuSearch: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisSettings"

    const/4 v4, 0x0

    const v5, 0x7f0b0914

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private launchTipNTutorial()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 15

    const/4 v14, 0x0

    move-object v11, p0

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040159

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v11, 0x7f1104ce

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0903

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/UnderlineSpan;

    invoke-direct {v11}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v0, v11, v14, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f1104d0

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0907

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/UnderlineSpan;

    invoke-direct {v11}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v1, v11, v14, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f1104cf

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0905

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0906

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f1104d1

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0908

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0904

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private saveFirstEnroll()V
    .locals 4

    const-string/jumbo v2, "iris_setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "isFirstIrisEnroll"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setIrisLockSetting()V
    .locals 4

    const/16 v3, 0x10

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0
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
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :sswitch_0
    const v0, 0x7f0b07e6

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b07e8

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0b07e7

    goto :goto_0

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

.method private showDisclaimerPopup(IZ)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/BottomScrollView;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v3, 0x10302d2

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0902

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisLockSettings$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisLockSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/iris/IrisLockSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$5;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->dialogButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->dialogButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->dialogButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    new-instance v3, Lcom/samsung/android/settings/iris/IrisLockSettings$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$6;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/BottomScrollView;->setOnBottomReachedListener(Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;)V

    return-void
.end method

.method private showErrorPopup(I)V
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v2, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v3, :cond_0

    const v5, 0x7f0b08eb

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/iris/IrisLockSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$7;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    const v6, 0x7f0b16db

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/iris/IrisLockSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$8;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/iris/IrisLockSettings$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$9;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/iris/IrisLockSettings$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$10;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b08ef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b08e8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b090e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b090d

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b090f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b090d

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startBiometricsLockSetup()V
    .locals 4

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x6b

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0
.end method

.method private startIrisDisclaimerActivity()V
    .locals 5

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.settings.iris.SecSetupIrisDisclaimerActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x6c

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIrisLockSettingsActivity()V
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.settings.iris.UseIrisLockSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "isFaceLockEnabled"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private startIrisRegister(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(IZ)V

    return-void
.end method

.method private startIrisRegister(IZ)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    if-nez v2, :cond_0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Token is null !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->isFirstEnroll()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisDisclaimerActivity()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showDisclaimerPopup(IZ)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz p2, :cond_3

    const-string/jumbo v2, "iris_enroll_retry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x65

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iput p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    const-string/jumbo v2, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "intent is not null! Copy the token to result_intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    if-nez v2, :cond_0

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mToken:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v5, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIDIris:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "lock_screen_iris"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    goto :goto_1

    :sswitch_1
    if-ne p2, v5, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :sswitch_2
    if-ne p2, v5, :cond_9

    const/16 v2, 0x10e

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    :cond_7
    if-nez v1, :cond_8

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :sswitch_3
    if-eqz p2, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :cond_a
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :sswitch_4
    if-ne p2, v6, :cond_17

    const-string/jumbo v2, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "iris_settings"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_f

    const/16 v2, 0x10e

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    :cond_d
    if-nez v1, :cond_e

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_e
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_0

    :cond_f
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v2, :cond_10

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    const-string/jumbo v2, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-eqz v2, :cond_13

    :cond_11
    :goto_2
    const-string/jumbo v1, "iris_settings"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0808

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_15
    const-string/jumbo v1, "iris_settings"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_3

    :cond_17
    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Set lockscreen failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_5
    if-ne p2, v5, :cond_18

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_6
    if-ne p2, v5, :cond_19

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->saveFirstEnroll()V

    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_7
    if-ne p2, v6, :cond_1c

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxSetDigitalLock"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto/16 :goto_0

    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_8
    if-nez p2, :cond_29

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIDIris:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_1e

    :cond_1d
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :cond_1e
    if-ne p1, v7, :cond_26

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    :cond_1f
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :cond_20
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_1f

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v1, :cond_24

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v1, :cond_21

    const-string/jumbo v1, "fromSetupWizard"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_21
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    :cond_23
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchTipNTutorial()V

    goto :goto_4

    :cond_24
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_5

    :cond_25
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    if-nez v1, :cond_23

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisLockSettingsActivity()V

    goto :goto_5

    :cond_26
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v1, :cond_28

    :cond_27
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchTipNTutorial()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_1f

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_4

    :cond_29
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2a

    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_0

    :cond_2a
    const/4 v2, -0x3

    if-ne p2, v2, :cond_2b

    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_0

    :cond_2b
    const/4 v2, -0x4

    if-ne p2, v2, :cond_2c

    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_0

    :cond_2c
    const/4 v2, -0x6

    if-ne p2, v2, :cond_2d

    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_0

    :cond_2d
    const/4 v2, -0x7

    if-ne p2, v2, :cond_32

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0900

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2e
    :goto_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-nez v2, :cond_2f

    if-ne p1, v7, :cond_31

    :cond_2f
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v2, :cond_31

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v2, :cond_30

    const-string/jumbo v2, "fromSetupWizard"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_30
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_31
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0

    :cond_32
    if-eq p2, v5, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08fe

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_8
        0x66 -> :sswitch_8
        0x68 -> :sswitch_7
        0x69 -> :sswitch_2
        0x6a -> :sswitch_1
        0x6b -> :sswitch_5
        0x6c -> :sswitch_6
        0x2717 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x64

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "IrisesEntry"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "startFingerprintLockSettings() : isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0b0800

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->initLockSettings()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreviousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "iris_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    if-lt v2, v8, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v3, "lock_screen_iris"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "register_iris_request"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "register_iris_request_from_chooselock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isFromKnoxSetDigitalLock"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v2, :cond_9

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    if-lt v2, v8, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isFromKnoxSetDigitalLock"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_0

    :cond_c
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxSetupWizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsFromSharedDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "SD Iris case, launching confirm lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "iris_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchBioAuth()V

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepToken:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "IrisesEntry"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
