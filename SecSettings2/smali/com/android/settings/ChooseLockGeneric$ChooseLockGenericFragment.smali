.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ChooseLockGeneric.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static CAC_LOCK_CHOSEN:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mChooseLockGenericFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

.field private static mIsManagedProfileWarningDialog:Z

.field private static mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private static mUnlockMethod:Ljava/lang/String;

.field private static mUserId:I

.field private static selectedTwoFactorType:I

.field private static usingTwoFactor:Z


# instance fields
.field private EVENT_ID_PASSWORD:I

.field private EVENT_ID_PATTERN:I

.field private EVENT_ID_PIN:I

.field private SCREEN_ID_CHOOSELOCK:I

.field private enterpriseOldPassword:Ljava/lang/String;

.field private fromChinaSUW:Z

.field protected fromSetupwizard:Z

.field private isLaunched:Z

.field private isSecureFolderUser:Z

.field private mAppLockBackupKey:Ljava/lang/String;

.field private mAppLockHeaderPreference:Landroid/preference/Preference;

.field private mBackupUserIdForKnox:I

.field private mChallenge:J

.field private mChooseLockRequestCode:I

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mChoosePref:I

.field private mChoosePrefFinishCase:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForAppLockBackupKey:Z

.field private mForChangeCredRequiredForBoot:Z

.field private mForFace:Z

.field protected mForFingerprint:Z

.field private mForIris:Z

.field private mForPrivateModeBackupKey:Z

.field private mFromKnoxSetDigitalLock:Z

.field private mHasChallenge:Z

.field private mHasChallenge_2nd:Z

.field private mHeaderView:Landroid/view/View;

.field private mHideDrawer:Z

.field private mIdentifyBiometrics:Z

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsDreg:Z

.field private mIsEnforcedMultifactorNReset:Z

.field private mIsFingerView:Z

.field private mIsIrisView:Z

.field private mIsKnoxVersion270Supported:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockNoneLoggingVal:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSwipeLoggingVal:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mOldIrisStateForTwoFactor:Z

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedBioLockTypeFromTwoStep:I

.field private mSelectedKnoxScreen:Z

.field private final mService:Landroid/net/IConnectivityManager;

.field mToken:[B

.field mTokenFace:[B

.field mTokenIris:[B

.field private mUseBioSession:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z

.field private mWasSecureBefore:Z

.field private oldPassword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    return-wide v0
.end method

.method static synthetic -get1()Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockGenericFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    return v0
.end method

.method static synthetic -get9()I
    .locals 1

    sget v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startIrisLockSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge_2nd:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/preference/Preference;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mBackupUserIdForKnox:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOldIrisStateForTwoFactor:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHeaderView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sput-object p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockGenericFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-void
.end method

.method private DisableSystemKey(Z)V
    .locals 3

    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DisableSystemKey() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private areFidoPackagesInstalled(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "com.samsung.android.authfw"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "com.samsung.android.authservice"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v6, :cond_3

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFidoRpServerAddress(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    return v7

    :cond_3
    const-string/jumbo v7, "ChooseLockGenericFragment"

    const-string/jumbo v8, "Fido packages have not been installed fully."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method private confirmFacePassword()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_face_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x271a

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmFingerprintPassword()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x2716

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmIrisPassword()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private disableTwoFactorIfEnabled()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "disableTwoFactorIfEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const v1, 0x7f0b1104

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCurrentLockTypeSummary()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private getCacChosen()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return v0
.end method

.method private getCurrentLockTypeSummary()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string/jumbo v1, ""

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :sswitch_0
    const v2, 0x7f0b137f

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    const v2, 0x7f0b1381

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0b1383

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getEnterpriseID()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getAuthenticationConfig()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .locals 27

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "Block"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const/high16 v2, 0x70000

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "Trying to set the SMARTCARDNUMERIC password quality"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_0

    const/4 v5, 0x4

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    const-string/jumbo v2, "choose_cac_pin"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    :cond_1
    :goto_0
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "fromSetupWizard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v2, ":settings:hide_drawer"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    return-object v14

    :cond_4
    const/high16 v2, 0x80000

    move/from16 v0, p1

    if-lt v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_0

    :cond_5
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-lt v0, v2, :cond_20

    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-gt v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_6

    const/4 v5, 0x4

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v11, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string/jumbo v2, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v19

    add-int v2, v24, v23

    move/from16 v0, v22

    if-le v2, v0, :cond_9

    add-int v22, v24, v23

    const-string/jumbo v2, "lockscreen.password_min_nonletter"

    move/from16 v0, v22

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    add-int v2, v25, v21

    move/from16 v0, v20

    if-le v2, v0, :cond_a

    add-int v20, v25, v21

    :cond_a
    add-int v2, v22, v20

    move/from16 v0, v19

    if-le v2, v0, :cond_b

    add-int v19, v22, v20

    const-string/jumbo v2, "lockscreen.password_min"

    move/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    const-string/jumbo v2, "lockscreen.password_min_uppercase"

    move/from16 v0, v25

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_lowercase"

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_symbols"

    move/from16 v0, v24

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_numeric"

    move/from16 v0, v23

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_letters"

    move/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_18

    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_10

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const/16 v4, 0x271a

    if-ne v2, v4, :cond_e

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v7, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v14

    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "first_lock_type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPassword"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_11

    const/4 v5, 0x4

    :cond_11
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_12
    const-string/jumbo v2, "isFromKnoxFinger"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_14

    const/4 v5, 0x4

    :cond_14
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxIris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_16

    const/4 v5, 0x4

    :cond_16
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxFace"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_19

    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "for_iris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "for_face"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    const/16 v18, 0x1

    :goto_2
    const-string/jumbo v2, "personal_mQuality"

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

    const/16 v18, 0x1

    :goto_3
    const-string/jumbo v2, "applock_mQuality"

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1d
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_1e
    const/16 v18, 0x0

    goto :goto_2

    :cond_1f
    const/16 v18, 0x0

    goto :goto_3

    :cond_20
    const/high16 v2, 0x10000

    move/from16 v0, p1

    if-ne v0, v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v13, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    :goto_4
    const-string/jumbo v2, "Block"

    invoke-virtual {v14, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_29

    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "first_lock_type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_22
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    goto :goto_4

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPattern"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "isFromKnoxFinger"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_25
    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_27

    const-string/jumbo v2, "isFromKnoxIris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_28

    const-string/jumbo v2, "isFromKnoxFace"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_28
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "for_iris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "for_face"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2e
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    :cond_2f
    const v2, 0x9100

    move/from16 v0, p1

    if-ne v0, v2, :cond_30

    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/samsung/android/settings/ChooseLockBLock;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "confirm_credentials"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "Block"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_30
    const v2, 0x61000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v26

    if-eqz v16, :cond_31

    const v2, 0x186c8

    move/from16 v0, v26

    if-eq v0, v2, :cond_33

    const v2, 0x186c9

    move/from16 v0, v26

    if-eq v0, v2, :cond_33

    :cond_31
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateUnlockMethodAndFinish isHardwareDetected = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", requestGetSensorStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0b0772

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_32
    const v2, 0x7f0b0772

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_33
    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unlock_set_off"

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "knox_finger_print_plus"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "unlock_set_two_factor"

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :sswitch_0
    const-string/jumbo v1, "unlock_set_pattern"

    return-object v1

    :sswitch_1
    const-string/jumbo v1, "unlock_set_pin"

    return-object v1

    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unlock_set_enterprise_identity"

    return-object v1

    :cond_2
    const-string/jumbo v1, "unlock_set_password"

    return-object v1

    :sswitch_3
    const-string/jumbo v1, "unlock_set_managed"

    return-object v1

    :sswitch_4
    const-string/jumbo v1, "unlock_set_none"

    return-object v1

    :sswitch_5
    const-string/jumbo v1, "unlock_set_cac_pin"

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x70000 -> :sswitch_5
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 11

    const/4 v8, 0x4

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v9

    if-nez v9, :cond_1

    sget-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    sget v10, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v9

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    if-eqz v9, :cond_6

    :cond_0
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    if-eqz v3, :cond_5

    const v8, 0x7f0b13a3

    return v8

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_0
    if-eqz v3, :cond_2

    const v8, 0x7f0b139d

    return v8

    :cond_2
    const v8, 0x7f0b139c

    return v8

    :sswitch_1
    if-eqz v3, :cond_3

    const v8, 0x7f0b139f

    return v8

    :cond_3
    const v8, 0x7f0b139e

    return v8

    :sswitch_2
    if-eqz v3, :cond_4

    const v8, 0x7f0b13a1

    return v8

    :cond_4
    const v8, 0x7f0b13a0

    return v8

    :cond_5
    const v8, 0x7f0b13a2

    return v8

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v2

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    :goto_1
    if-eqz v4, :cond_8

    const/4 v6, 0x2

    :goto_2
    if-eqz v2, :cond_9

    move v0, v8

    :goto_3
    or-int v9, v1, v6

    or-int v5, v9, v0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_a

    const v7, 0x7f0b0a58

    :goto_4
    return v7

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v9, 0x2

    if-ne v5, v9, :cond_b

    const v7, 0x7f0b0a59

    goto :goto_4

    :cond_b
    if-ne v5, v8, :cond_c

    const v7, 0x7f0b0a5a

    goto :goto_4

    :cond_c
    const v7, 0x7f0b0a5b

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b1393

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0b1392

    goto :goto_0
.end method

.method private hasEnrolledFaces()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasEnrolledFingerprints(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasEnrolledIrises()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasManagedProfileFingerprints(I)Z
    .locals 10

    const-string/jumbo v7, "ChooseLockGenericFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasManagedProfileFingerprints : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method private isIrisDisabled()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string/jumbo v5, "ChooseLockGenericFragment"

    const-string/jumbo v6, "isIrisDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    sget v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v9, v6}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    if-nez v1, :cond_1

    const-string/jumbo v6, "ChooseLockGenericFragment"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled(IRIS) == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method private isMultifactorAuthEnforced()Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->isMultifactorAuthenticationEnforced()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ChooseLockGenericFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecurityException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isReadyforFidoADcontainer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->areFidoPackagesInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportBiometrics()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isUnlockMethodAllowedByAllowRemoveCertificates(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Preference key %s is %s according to MDM restrictions"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    if-eqz v0, :cond_2

    const-string/jumbo v1, "allowed"

    :goto_1
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUserRemoveCertificateAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "not allowed"

    goto :goto_1
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserRemoveCertificateAllowed()Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string/jumbo v4, "isUserRemoveCertificatesAllowed"

    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isUserRemoveCertificatesAllowed not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "user_setup_complete"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v10, 0x18

    const-string/jumbo v15, "ro.product.first_api_level"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x0

    if-lez v7, :cond_0

    const/16 v15, 0x18

    if-ge v7, v15, :cond_0

    const-string/jumbo v15, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v9, 0x1

    :cond_0
    const-string/jumbo v15, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    if-eqz v15, :cond_1

    sget v15, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_1
    const/4 v12, 0x0

    :try_start_0
    const-string/jumbo v15, "mount"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    :goto_0
    const/4 v15, 0x1

    if-eq v12, v15, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_3
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v15, :cond_1

    const/4 v15, 0x1

    if-eq v3, v15, :cond_1

    if-nez v9, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v15, "for_cred_req_boot"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    if-eqz v2, :cond_4

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v13, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v15, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v15, ":settings:hide_drawer"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v15, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_4
    const/4 v15, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v15, "ChooseLockGenericFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error calling mount service "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    invoke-virtual/range {p0 .. p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_2
.end method

.method private removeEncryptionPopup(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0a5d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0a5e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$10;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$10;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V

    const v3, 0x7f0b04f6

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$11;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$11;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private requestFidoDeregistrationFingerprint()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dereg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "fido_user_name"

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fido_type"

    const-string/jumbo v2, "fido_type_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private requestFidoDeregistrationIris()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dereg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "fido_user_name"

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fido_type"

    const-string/jumbo v2, "fido_type_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private sendSurveyForLockScreen()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Face"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "There was no digital lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DirectionLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

.method private setBiometricsDefaultDesc(Landroid/preference/PreferenceScreen;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_finger_print_plus"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v3, "pref_biometrics_description"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/MultiLinePreference;

    const-string/jumbo v2, ""

    if-eqz v0, :cond_3

    const v3, 0x7f0b10ff

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const v3, 0x7f0b10fe

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setCacChosen(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 3

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sendSurveyForLockScreen()V

    return-void
.end method

.method private setFingerprintScreenLockEnable()V
    .locals 4

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "setFingerprintScreenLockEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sendSurveyForLockScreen()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setLockTypeSummary(Landroid/preference/PreferenceScreen;)V
    .locals 12

    const-string/jumbo v9, "pref_lock_type"

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v8, ""

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v9}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    :goto_0
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x10

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    :goto_1
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v9

    if-eqz v9, :cond_1

    and-int v9, v2, v3

    if-eqz v9, :cond_5

    const/4 v6, 0x1

    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "knox_finger_print_plus"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v4, 0x1

    :goto_3
    const-string/jumbo v9, "ChooseLockGenericFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isFingerPlus Enabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isMultiBiometrics : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isIrisLocked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    if-eqz v6, :cond_7

    const v9, 0x7f0b10fb

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    :goto_4
    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v9, "ChooseLockGenericFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SettingNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    const v9, 0x7f0b10fa

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_8
    const v9, 0x7f0b10f9

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :sswitch_0
    if-eqz v4, :cond_9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b137f

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    const v9, 0x7f0b137f

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :sswitch_1
    if-eqz v4, :cond_a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b1381

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    const v9, 0x7f0b1381

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :sswitch_2
    if-eqz v4, :cond_c

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b09b1

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b1383

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_c
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x7f0b09b1

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_d
    const v9, 0x7f0b1383

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 12

    const/16 v3, 0x64

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v11, 0x0

    const-string/jumbo v1, "pref_lock_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b10fc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string/jumbo v1, "unlock_set_direction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    if-eqz v9, :cond_1

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.directionlock.ChooseLockDirection"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "for_fingerprint"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "for_iris"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "for_face"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const/16 v0, 0x66

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "unlock_set_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock disabled : off"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockNoneLoggingVal:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockNoneLoggingVal:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "unlock_set_none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock disabled : swipe"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockSwipeLoggingVal:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockSwipeLoggingVal:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0, v11, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_d

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PATTERN:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_c
    :goto_1
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1

    :cond_e
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_11

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PIN:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_10
    :goto_2
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_2

    :cond_12
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_15

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PASSWORD:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_14
    :goto_3
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    :cond_15
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_3

    :cond_16
    const-string/jumbo v0, "unlock_set_smart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x9100

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v0, "unlock_set_cac_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/UCMHelpUtils;->isCACCardRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    const/high16 v0, 0x70000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_18
    invoke-direct {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/UCMHelpUtils;->showCardNotRegisteredDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v0, "unlock_set_fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x61000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v0, "unlock_set_iris"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "lock_screen_iris"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v3, :cond_1b

    const-string/jumbo v0, "is_knox"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1b
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_1c
    const-string/jumbo v0, "unlock_set_two_factor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v3, :cond_20

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "set two-factor for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOldIrisStateForTwoFactor:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "fromKnoxKeyguard"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1e
    sget v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mBackupUserIdForKnox:I

    const/16 v0, 0x2712

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0b076a

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const v2, 0x7f0b078f

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v11

    :cond_20
    const-string/jumbo v0, "unlock_set_enterprise_identity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v3, :cond_21

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "set Enterprise identity for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v0, "enterprise.password_old"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x271a

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private showFaceSensorErrorDialog(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0860

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$8;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$8;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Activity is null. Skip FaceSensorErrorDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFaceTurnOnDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    sget v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ChooseLockGeneric_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFingerprints(I)Z

    move-result v3

    goto :goto_0
.end method

.method private showIrisTurnOnDialogForChooseLock()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0917

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0918

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$17;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$17;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v3, 0x7f0b04ce

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$18;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$18;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    const v1, 0x7f0b0772

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f0b0773

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b076f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$5;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$6;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private skipBiometricsAuthentication()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private startFaceLockSettings(Ljava/lang/String;[BZ)V
    .locals 6

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFaceLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isHardwareDetected() of Face is FALSE."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0b0861

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFaceSensorErrorDialog(I)V

    return-void

    :cond_0
    const-string/jumbo v3, "lock_screen_face"

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFaceLockSettings() : isInMultiWindowMode is TRUE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0801

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "lock_screen_face"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "identifyFace"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[BZ)V
    .locals 8

    const/16 v7, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFingerprintLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "Utils.isFingerprintDisabled() = TURE"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0b0772

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    return-void

    :cond_1
    const-string/jumbo v3, "lock_screen_fingerprint"

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFingerprintLockSettings() : isInMultiWindowMode is TRUE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0801

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0b076a

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0b078f

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In startFingerprintLockSettings: mPreviousStage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v7, :cond_7

    const-string/jumbo v3, "is_knox"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "isEnterpriseIDFingerprint"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "lock_screen_fingerprint"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "fromSetupwizard"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-nez v3, :cond_9

    const/16 v3, 0x2718

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v3, "lock_screen_fingerprint"

    const-string/jumbo v4, "lock_screen_fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    :cond_a
    if-eqz p3, :cond_b

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mBackupUserIdForKnox:I

    const-string/jumbo v3, "mKnoxIdentifyOnly"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x2719

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startIrisLockSettings()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "register_iris_request_from_chooselock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIrisScreenLock()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.REGISTER_IRIS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "lock_screen_iris"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "isEnterpriseIDIris"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isFidoReadyContainer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x271d

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBiometricsPreferences()V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    if-eqz v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const v27, 0x7f0b10fd

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_1
    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string/jumbo v26, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-boolean v0, v9, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    iget-boolean v0, v9, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v28, "isBiometricAuthenticationEnabled"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v26 .. v29}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v11, v0, :cond_3

    const/4 v10, 0x1

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    if-eqz v21, :cond_31

    const-string/jumbo v26, "pref_lock_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v26, "biometrics_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    const-string/jumbo v26, "pref_biometrics_description"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/MultiLinePreference;

    const-string/jumbo v26, "pref_divider"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    const-string/jumbo v26, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    if-eqz v23, :cond_4

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string/jumbo v26, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->removeAll()V

    if-eqz v20, :cond_6

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_6
    if-eqz v17, :cond_7

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v26

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v3

    :goto_2
    if-eqz v18, :cond_8

    const-string/jumbo v25, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "knox_finger_print_plus"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    const/4 v14, 0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isMultifactorAuthEnforced()Z

    move-result v12

    if-eqz v3, :cond_1f

    if-eqz v14, :cond_1e

    if-eqz v12, :cond_1d

    const v26, 0x7f0b1103

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    :goto_4
    const/16 v26, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/MultiLinePreference;->setOrder(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_8
    if-eqz v19, :cond_9

    const/16 v26, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    if-eqz v23, :cond_b

    const/16 v26, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    sget v26, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v26, v0

    if-eqz v26, :cond_22

    const v26, 0x7f0b09b9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v26

    if-nez v26, :cond_23

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_b
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v26

    if-eqz v26, :cond_d

    if-eqz v24, :cond_d

    const/16 v26, 0x6

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v26, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v8

    :goto_7
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26

    const v26, 0x7f0b09b9

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    const/16 v28, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v26

    if-nez v26, :cond_27

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_d
    :goto_9
    if-eqz v13, :cond_f

    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "sdp enabled"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v23, :cond_e

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const v26, 0x7f0b138a

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_e
    if-eqz v24, :cond_f

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const v26, 0x7f0b138a

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v26

    if-eqz v26, :cond_12

    :cond_10
    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "DesktopMode or UCMKeyguard enabled"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v23, :cond_11

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_11
    if-eqz v24, :cond_12

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    sget v27, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v26 .. v27}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v26

    if-eqz v26, :cond_13

    if-eqz v23, :cond_13

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const v26, 0x7f0b138a

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isIrisDisabled()Z

    move-result v26

    if-eqz v26, :cond_14

    if-eqz v24, :cond_14

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const v26, 0x7f0b138a

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v26

    if-eqz v26, :cond_17

    const-string/jumbo v22, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->areFidoPackagesInstalled(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_2c

    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "Fido AD container is ready"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    if-eqz v3, :cond_29

    const v26, 0x7f0b10ff

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v15, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :goto_a
    if-eqz v18, :cond_15

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_15
    if-eqz v23, :cond_16

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "switch_fingerprint"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_16
    :goto_b
    if-eqz v24, :cond_17

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "switch_iris"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_17
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    :goto_d
    return-void

    :cond_18
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_19
    :try_start_1
    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "ekm is null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    const-string/jumbo v26, "ChooseLockGenericFragment"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "SecurityException: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_1d
    const v26, 0x7f0b1101

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCurrentLockTypeSummary()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    :cond_1e
    const v26, 0x7f0b10ff

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    :cond_1f
    if-eqz v14, :cond_21

    if-eqz v12, :cond_20

    const v26, 0x7f0b1102

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    :cond_20
    const v26, 0x7f0b1100

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCurrentLockTypeSummary()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    :cond_21
    const v26, 0x7f0b10fe

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    :cond_22
    const v26, 0x7f0b05d8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_5

    :cond_23
    if-nez v7, :cond_24

    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "Fingerprint data was deleted by user."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_24
    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_25
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_26
    const v26, 0x7f0b05d8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_27
    if-nez v8, :cond_28

    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "Iris data was deleted by user."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_28
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_29
    const v26, 0x7f0b10fe

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v15, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    :cond_2a
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_b

    :cond_2b
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_c

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_30

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v26

    if-eqz v26, :cond_30

    const v26, 0x7f0b0c98

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b09b1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const/16 v28, 0x1

    aput-object v15, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :cond_2d
    :goto_e
    if-eqz v18, :cond_2e

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2e
    if-eqz v23, :cond_2f

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2f
    if-eqz v24, :cond_17

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_2d

    const v26, 0x7f0b0c99

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b09b1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const/16 v28, 0x1

    aput-object v15, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto :goto_e

    :cond_31
    const-string/jumbo v26, "ChooseLockGenericFragment"

    const-string/jumbo v27, "updateBiometricsPreferences : preference screen is null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private updateCurrentPreference()V
    .locals 10

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v3, ", "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v3, "\u060c "

    :cond_0
    :goto_0
    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const v9, 0x7f0b1386

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v3, "\u3001"

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v3, "\uff0c"

    goto :goto_0
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 2

    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    return-void
.end method

.method private updatePreferenceText()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v1}, Lcom/android/settings/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unlock_set_managed"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "unlock_set_managed"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferencesOrFinish()V
    .locals 51

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string/jumbo v45, "lockscreen.password_type"

    const/16 v46, -0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    const/16 v45, -0x1

    move/from16 v0, v40

    move/from16 v1, v45

    if-ne v0, v1, :cond_2f

    const-string/jumbo v45, "minimum_quality"

    const/16 v46, -0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v40

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v45

    if-nez v45, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    if-eqz v45, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    const v46, 0x7f0b10fd

    invoke-virtual/range {v45 .. v46}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    const-string/jumbo v45, "hide_disabled_prefs"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    if-eqz v39, :cond_1

    invoke-virtual/range {v39 .. v39}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string/jumbo v46, "universal_lock_switch_state"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    if-eqz v45, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v45, v0

    if-eqz v45, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v42

    const-string/jumbo v45, "unlock_set_direction"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_3

    const-string/jumbo v45, "unlock_set_direction"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v45

    if-eqz v45, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v42

    const-string/jumbo v45, "unlock_set_off"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_4

    const-string/jumbo v45, "unlock_set_off"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string/jumbo v45, "unlock_set_none"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_5

    const-string/jumbo v45, "unlock_set_none"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_6

    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->wManagerChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v42

    if-eqz v42, :cond_8

    const-string/jumbo v45, "unlock_set_fingerprint"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_7

    const-string/jumbo v45, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_8

    :cond_7
    const-string/jumbo v45, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_8

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v45

    if-eqz v45, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-eqz v45, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v45, v0

    if-nez v45, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v45, v0

    if-nez v45, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v45, v0

    if-nez v45, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v45

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v45 .. v46}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v45

    if-nez v45, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v45

    if-eqz v45, :cond_a

    :cond_9
    const-string/jumbo v45, "biometrics_unclickable_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "biometrics_unclickable_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-nez v45, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v45

    if-eqz v45, :cond_32

    :cond_b
    const-string/jumbo v45, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_c

    const-string/jumbo v45, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const v46, 0x7f0b08d6

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setTitle(I)V

    :cond_c
    const-string/jumbo v45, "unlock_set_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    const/16 v46, 0x64

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v45, v0

    :goto_1
    if-nez v45, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "unlock_set_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string/jumbo v45, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-eqz v45, :cond_31

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    const/16 v46, 0x64

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v45, v0

    if-eqz v45, :cond_31

    :cond_e
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-nez v45, :cond_f

    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v45

    if-eqz v45, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v45

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v45 .. v46}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v45

    if-eqz v45, :cond_11

    :cond_10
    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v45, v0

    if-nez v45, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v45, v0

    if-nez v45, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v45, v0

    if-nez v45, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v45, v0

    if-eqz v45, :cond_15

    :cond_12
    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_16

    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    check-cast v43, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v47, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v45

    if-nez v45, :cond_36

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v45, v0

    if-eqz v45, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v45

    if-eqz v45, :cond_37

    const v45, 0x7f0b08f2

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_16
    :goto_5
    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_17

    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    check-cast v43, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v47, 0x10

    move-object/from16 v0, v45

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v45

    if-nez v45, :cond_38

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v45, v0

    if-eqz v45, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v45

    if-eqz v45, :cond_39

    const v45, 0x7f0b08f2

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_17
    :goto_7
    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_19

    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    check-cast v43, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v47, 0x100

    move-object/from16 v0, v45

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v45

    if-nez v45, :cond_3a

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v45, v0

    if-eqz v45, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v45 .. v46}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v45

    if-eqz v45, :cond_3b

    const v45, 0x7f0b08f2

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_9
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnabled()Z

    move-result v45

    if-nez v45, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v45 .. v46}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v45

    if-eqz v45, :cond_19

    :cond_18
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_19
    const-string/jumbo v45, "biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1a
    const-string/jumbo v45, "pref_biometrics_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "pref_biometrics_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    const-string/jumbo v45, "pref_divider"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "pref_divider"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    const/16 v46, 0x64

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v45, v0

    if-eqz v45, :cond_3c

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    if-eqz v39, :cond_1e

    const-string/jumbo v45, "unlock_set_two_factor"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    check-cast v45, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v45, :cond_1e

    const-string/jumbo v45, "unlock_set_two_factor"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v33, :cond_1e

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    if-eqz v39, :cond_1f

    const-string/jumbo v45, "unlock_set_enterprise_identity"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    check-cast v45, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v45, :cond_1f

    const-string/jumbo v45, "unlock_set_enterprise_identity"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v27, :cond_1f

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v45

    const-string/jumbo v46, "Block"

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v45, v0

    if-nez v45, :cond_21

    sget v45, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v45

    if-eqz v45, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v45

    if-eqz v45, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v45

    if-eqz v45, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    sget v46, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v45

    const v46, 0x61000

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_21

    :cond_20
    if-eqz v15, :cond_62

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v45, v0

    if-nez v45, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v45

    if-eqz v45, :cond_63

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v45, v0

    if-nez v45, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v45

    if-eqz v45, :cond_64

    :cond_23
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    :goto_b
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v44

    if-eqz v44, :cond_65

    const-string/jumbo v45, ""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_65

    const-string/jumbo v45, "none"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    :goto_c
    if-nez v45, :cond_24

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->isEnforcedCredentialStorageExist()Z

    move-result v45

    if-eqz v45, :cond_24

    const/high16 v45, 0x70000

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v45

    if-eqz v45, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    if-nez v45, :cond_25

    new-instance v45, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v16

    const-string/jumbo v45, "ChooseLockGenericFragment"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "going to disable finger and iris "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v45, 0x20000

    move/from16 v0, v16

    move/from16 v1, v45

    if-eq v0, v1, :cond_26

    const/high16 v45, 0x30000

    move/from16 v0, v16

    move/from16 v1, v45

    if-ne v0, v1, :cond_66

    :cond_26
    :goto_d
    const-string/jumbo v45, "unlock_set_fingerprint"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_27

    const-string/jumbo v45, "unlock_set_fingerprint"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_27
    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_28

    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_28
    const-string/jumbo v45, "unlock_set_iris"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_29

    const-string/jumbo v45, "unlock_set_iris"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_29
    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_2a

    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2a
    const-string/jumbo v45, "ChooseLockGenericFragment"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "disabling finger and iris in lock type menu if pattern and pin is set as lock type for SD case "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v45

    const/16 v46, 0x10

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v45, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_2e

    :cond_2c
    const-string/jumbo v45, "unlock_set_pattern"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_2d

    const-string/jumbo v45, "unlock_set_pattern"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2d
    const-string/jumbo v45, "unlock_set_pin"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_2e

    const-string/jumbo v45, "unlock_set_pin"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2e
    return-void

    :cond_2f
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_30
    const/16 v45, 0x0

    goto/16 :goto_1

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_32
    const-string/jumbo v45, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_33
    const-string/jumbo v45, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_34
    const-string/jumbo v45, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_35
    const-string/jumbo v45, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    if-eqz v45, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v45

    const-string/jumbo v46, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_36
    const/16 v45, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_37
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_38
    const/16 v45, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_39
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_3a
    const/16 v45, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_3b
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v45, v0

    if-nez v45, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    if-eqz v39, :cond_1f

    const-string/jumbo v45, "unlock_set_password"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v45, "unlock_set_pin"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v45, "unlock_set_pattern"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settingslib/RestrictedPreference;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string/jumbo v45, "unlock_set_two_factor"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v45, "fingerprint_category"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    const-string/jumbo v45, "unlock_set_enterprise_identity"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual/range {v39 .. v39}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v45

    if-eqz v45, :cond_58

    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-direct {v9, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_3d

    const v45, 0x7f04006f

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/16 v45, -0x1

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3d
    if-eqz v31, :cond_3e

    const/16 v45, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3e
    if-eqz v32, :cond_3f

    const/16 v45, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3f
    if-eqz v30, :cond_40

    const/16 v45, 0x3

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_40
    :goto_e
    if-eqz v33, :cond_41

    const/16 v45, 0x5

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_41
    if-eqz v27, :cond_42

    const/16 v45, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_42
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v41, 0x0

    const/16 v36, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-eqz v45, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v45, v0

    if-eqz v45, :cond_43

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v45

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    const-string/jumbo v45, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v45

    move-object/from16 v0, v37

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v11

    if-eqz v11, :cond_44

    iget-boolean v0, v11, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    move/from16 v45, v0

    if-eqz v45, :cond_44

    iget-boolean v0, v11, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move/from16 v45, v0

    if-eqz v45, :cond_5b

    :cond_44
    :goto_f
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    const-string/jumbo v46, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v47, "isBiometricAuthenticationEnabled"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x0

    aput-object v49, v48, v50

    invoke-static/range {v45 .. v48}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    const-string/jumbo v46, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v47, "isBiometricAuthenticationEnabled"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x2

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x0

    aput-object v49, v48, v50

    invoke-static/range {v45 .. v48}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    if-eqz v6, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v46

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v4

    if-eqz v4, :cond_45

    const/16 v45, 0x1

    move/from16 v0, v45

    if-ne v13, v0, :cond_45

    const/16 v19, 0x1

    :cond_45
    if-eqz v4, :cond_46

    const/16 v45, 0x1

    move/from16 v0, v45

    if-ne v14, v0, :cond_46

    const/16 v20, 0x1

    :cond_46
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager;->isMultifactorAuthenticationEnforced()Z

    move-result v25

    :cond_47
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v46

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v34

    const/16 v18, 0x0

    if-eqz v34, :cond_48

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v18

    if-eqz v18, :cond_48

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v22

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v23

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v36

    :cond_48
    if-eqz v4, :cond_4a

    if-nez v36, :cond_49

    const-string/jumbo v36, "com.sec.android.service.singlesignon"

    :cond_49
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_4a

    const/16 v21, 0x1

    :cond_4a
    sget-object v45, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    if-nez v26, :cond_5c

    if-eqz v21, :cond_5c

    if-eqz v24, :cond_5c

    const/16 v41, 0x0

    :goto_10
    if-nez v26, :cond_4b

    if-eqz v19, :cond_4b

    :cond_4b
    if-nez v26, :cond_4c

    if-eqz v20, :cond_4c

    :cond_4c
    if-eqz v26, :cond_4d

    if-eqz v25, :cond_5e

    :cond_4d
    :goto_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-eqz v45, :cond_4e

    :cond_4e
    if-eqz v25, :cond_50

    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v45, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v45

    if-eqz v45, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v45, v0

    if-eqz v45, :cond_4f

    :cond_4f
    if-nez v41, :cond_5f

    const/16 v45, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_50
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v45

    if-nez v45, :cond_51

    if-eqz v33, :cond_51

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_51
    if-eqz v33, :cond_52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v45, v0

    if-eqz v45, :cond_52

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_52
    if-eqz v22, :cond_53

    if-eqz v41, :cond_60

    :cond_53
    if-nez v23, :cond_54

    if-eqz v41, :cond_55

    :cond_54
    if-eqz v27, :cond_55

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_55
    :goto_13
    if-eqz v11, :cond_56

    iget-boolean v0, v11, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    move/from16 v45, v0

    if-eqz v45, :cond_56

    if-eqz v33, :cond_56

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_56
    if-nez v19, :cond_61

    :goto_14
    if-eqz v20, :cond_57

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v45

    if-eqz v45, :cond_1f

    :cond_57
    if-eqz v33, :cond_1f

    const/16 v45, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_58
    if-eqz v30, :cond_59

    const/16 v45, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_59
    if-eqz v32, :cond_5a

    const/16 v45, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_5a
    if-eqz v31, :cond_40

    const/16 v45, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_5b
    const/16 v26, 0x1

    goto/16 :goto_f

    :cond_5c
    const/16 v41, 0x1

    goto/16 :goto_10

    :cond_5d
    :try_start_1
    const-string/jumbo v45, "ChooseLockGenericFragment"

    const-string/jumbo v46, "ekm is null"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10

    :catch_0
    move-exception v5

    const-string/jumbo v45, "ChooseLockGenericFragment"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "SecurityException: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_5e
    if-eqz v33, :cond_4d

    const/16 v45, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const v45, 0x7f0b138a

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto/16 :goto_11

    :cond_5f
    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    :cond_60
    if-nez v25, :cond_55

    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v45, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    if-eqz v33, :cond_55

    const/16 v45, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_13

    :cond_61
    const/16 v20, 0x1

    goto/16 :goto_14

    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v45

    if-nez v45, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmFingerprintPassword()V

    goto/16 :goto_b

    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v45

    if-eqz v45, :cond_22

    if-nez v15, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmIrisPassword()V

    goto/16 :goto_b

    :cond_64
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v45

    if-eqz v45, :cond_23

    if-nez v15, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmFacePassword()V

    goto/16 :goto_b

    :cond_65
    const/16 v45, 0x1

    goto/16 :goto_c

    :cond_66
    const/high16 v45, 0x10000

    move/from16 v0, v16

    move/from16 v1, v45

    if-ne v0, v1, :cond_2b

    goto/16 :goto_d
.end method

.method private upgradeQuality(I)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    return p1

    :cond_1
    const/high16 v0, 0x50000

    return v0
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ode_password_quality"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x10001

    if-lt p1, v1, :cond_2

    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    :cond_2
    const/high16 p1, 0x10000

    :cond_3
    return p1
.end method


# virtual methods
.method protected addPreferences()V
    .locals 2

    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    const v1, 0x7f11000c

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    const v1, 0x7f11000d

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    const v1, 0x7f11000e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setViewId(I)V

    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v19 .. v20}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v20, "Block"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_0
    if-ltz v9, :cond_40

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x1

    const/16 v18, 0x1

    const/4 v5, 0x0

    const-string/jumbo v19, "unlock_set_direction"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const v19, 0x10001

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    const/4 v6, 0x1

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v18, :cond_3a

    move/from16 v18, v6

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodAllowedByAllowRemoveCertificates(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3b

    :goto_3
    if-nez v18, :cond_3c

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v19, "unlock_set_off"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    if-gtz p1, :cond_7

    const/4 v6, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e000f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v6, 0x0

    const/16 v18, 0x0

    :cond_6
    if-lez v4, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    :cond_9
    const-string/jumbo v19, "unlock_set_none"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    sget v19, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v18, 0x0

    :cond_a
    if-gtz p1, :cond_b

    const/4 v6, 0x1

    :goto_6
    if-lez v4, :cond_c

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    goto :goto_1

    :cond_d
    const-string/jumbo v19, "unlock_set_pattern"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_e

    const/4 v6, 0x0

    :goto_7
    const/high16 v19, 0x10000

    move/from16 v0, v19

    if-le v4, v0, :cond_10

    const/4 v5, 0x1

    goto :goto_1

    :cond_e
    const/high16 v19, 0x10000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    const/4 v6, 0x1

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v19, "unlock_set_fingerprint"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    const-string/jumbo v19, "switch_fingerprint"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_13

    if-eqz v14, :cond_18

    :cond_13
    const/16 v18, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    const-string/jumbo v19, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    :cond_14
    const/4 v6, 0x0

    const/16 v18, 0x0

    :cond_15
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v17, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v21, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v19

    if-lez v19, :cond_16

    if-nez v12, :cond_16

    const/4 v6, 0x0

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v19

    if-eqz v19, :cond_17

    const-string/jumbo v19, "ChooseLockGenericFragment"

    const-string/jumbo v20, "Utils.isFingerprintDisabled() = TURE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_13

    const/16 v18, 0x1

    goto/16 :goto_8

    :cond_19
    const-string/jumbo v19, "unlock_set_smart"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const v19, 0x9100

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_1a

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v19, "unlock_set_pin"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_1c

    const/4 v6, 0x0

    :goto_9
    const/high16 v19, 0x30000

    move/from16 v0, v19

    if-le v4, v0, :cond_1e

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_1c
    const/high16 v19, 0x30000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_1d

    const/4 v6, 0x1

    goto :goto_9

    :cond_1d
    const/4 v6, 0x0

    goto :goto_9

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v19, "unlock_set_cac_pin"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/high16 v19, 0x70000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_21

    const/4 v6, 0x1

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/UCMHelpUtils;->isSmartcardAvailable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_20

    if-eqz v14, :cond_22

    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_21
    const/4 v6, 0x0

    goto :goto_a

    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v19, "unlock_set_password"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_24

    const/4 v6, 0x0

    :goto_b
    const/high16 v19, 0x60000

    move/from16 v0, v19

    if-le v4, v0, :cond_26

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_24
    const/high16 v19, 0x60000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_25

    const/4 v6, 0x1

    goto :goto_b

    :cond_25
    const/4 v6, 0x0

    goto :goto_b

    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v19, "unlock_set_managed"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    const/high16 v19, 0x80000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v6

    :goto_c
    const/high16 v19, 0x80000

    move/from16 v0, v19

    if-le v4, v0, :cond_29

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_28
    const/4 v6, 0x0

    goto :goto_c

    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_2a
    const-string/jumbo v19, "unlock_set_enterprise_identity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_2b

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_2b
    const/high16 v19, 0x60000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_2c

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v19, "pref_lock_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2f

    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v19, v0

    if-nez v19, :cond_2e

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_30
    const-string/jumbo v19, "unlock_set_iris"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isIrisDisabled()Z

    move-result v19

    if-eqz v19, :cond_31

    const/4 v6, 0x0

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    const-string/jumbo v19, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_32
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_33
    const-string/jumbo v19, "switch_iris"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isIrisDisabled()Z

    move-result v19

    if-eqz v19, :cond_34

    const/4 v6, 0x0

    :cond_34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_35

    const/16 v18, 0x1

    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v19, v0

    if-nez v19, :cond_36

    const-string/jumbo v19, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37

    :cond_36
    const/16 v18, 0x0

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_38

    const/16 v18, 0x0

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v19, v0

    if-eqz v19, :cond_39

    const/16 v18, 0x0

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_3a
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_3b
    const-string/jumbo v19, "ChooseLockGenericFragment"

    const-string/jumbo v20, "Disabling preference key %s due to MDM allowRemoveCertificates"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_3c
    if-eqz v5, :cond_3d

    if-eqz v7, :cond_3d

    check-cast v16, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    :cond_3d
    if-nez v6, :cond_3f

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_3e

    move-object/from16 v19, v16

    check-cast v19, Lcom/samsung/android/settingslib/RestrictedPreference;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_3e
    const v19, 0x7f0b138a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_3f
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    check-cast v16, Lcom/samsung/android/settingslib/RestrictedPreference;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    :cond_40
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/CryptKeeperEncryptionInterstitialActivity;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1aa9

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 2

    invoke-static/range {p1 .. p9}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1

    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 1

    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 1

    invoke-static/range {p1 .. p6}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    const/16 v0, 0x1b

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SCREEN_ID_CHOOSELOCK:I

    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 23

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p3, :cond_0

    const-string/jumbo v2, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const-string/jumbo v2, "enterprise_password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    const-string/jumbo v2, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    const-string/jumbo v2, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const-string/jumbo v2, "hw_auth_token_iris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    const-string/jumbo v2, "hw_auth_token_face"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    :cond_5
    const/16 v2, 0x66

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x65

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_7
    if-eqz p3, :cond_8

    const-string/jumbo v2, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const-string/jumbo v2, "hw_auth_token_iris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    const-string/jumbo v2, "hw_auth_token_face"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->requestUpdateSID([B)Z

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "db_lockscreen_is_smart_lock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_e

    :cond_b
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_d
    const/4 v13, 0x0

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v17

    const-string/jumbo v10, ""

    sparse-switch v17, :sswitch_data_0

    :goto_4
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_0
    const-string/jumbo v10, "PIN"

    goto :goto_4

    :sswitch_1
    const-string/jumbo v10, "Password"

    goto :goto_4

    :sswitch_2
    const-string/jumbo v10, "Pattern"

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    if-nez v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    const/high16 v3, 0x70000

    if-ne v2, v3, :cond_10

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Smartcard type do not need fingerprint setting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    return-void

    :cond_11
    const/16 v2, 0x2715

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    sget-object v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    return-void

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_13
    const/16 v2, 0x2716

    move/from16 v0, p1

    if-eq v0, v2, :cond_14

    const/16 v2, 0x2717

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    :cond_14
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    goto/16 :goto_1

    :cond_15
    const/16 v2, 0x271a

    move/from16 v0, p1

    if-eq v0, v2, :cond_14

    const/16 v2, 0x2718

    move/from16 v0, p1

    if-ne v0, v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_51

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult reqCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2711

    move/from16 v0, p1

    if-ne v0, v2, :cond_1c

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_18

    if-eqz p2, :cond_19

    :cond_18
    :try_start_0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "set two factor : 0"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "two factor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persona"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v11

    if-eqz v11, :cond_19

    iget-boolean v2, v11, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v2, :cond_19

    iget-boolean v2, v11, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1a

    :cond_19
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_1a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v9

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SettingNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_1c
    const/16 v2, 0x2712

    move/from16 v0, p1

    if-ne v0, v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mBackupUserIdForKnox:I

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    if-nez p2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOldIrisStateForTwoFactor:Z

    if-eqz v2, :cond_1e

    :cond_1d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_1f

    if-nez p2, :cond_1f

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "resetResult"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v15, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_6

    :cond_1f
    if-eqz p3, :cond_20

    const-string/jumbo v2, "first_lock_type"

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    :cond_20
    const/high16 v2, 0x10000

    move/from16 v0, p2

    if-lt v0, v2, :cond_21

    const/high16 v2, 0x60000

    move/from16 v0, p2

    if-gt v0, v2, :cond_21

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    sput p2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    return-void

    :cond_21
    const/16 v2, 0x271a

    move/from16 v0, p2

    if-ne v0, v2, :cond_25

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/high16 v20, 0x60000

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    const/high16 v3, 0x60000

    if-gt v2, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    const/high16 v3, 0x40000

    if-lt v2, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v20

    :cond_22
    :goto_7
    sput p2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    move/from16 p2, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :cond_23
    return-void

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    const/high16 v3, 0x20000

    if-gt v2, v3, :cond_22

    const/high16 v20, 0x40000

    goto :goto_7

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_26
    const/16 v2, 0x2713

    move/from16 v0, p1

    if-ne v0, v2, :cond_2d

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2a

    :try_start_2
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "set two factor : 1"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :goto_8
    sget-object v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "KNOX lock type will be set as two-step"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "two factor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_9
    const-string/jumbo v2, "persona"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_27
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v9

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SettingNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_28
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_8

    :cond_29
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "error when getting bio locktype"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :cond_2a
    if-nez p2, :cond_2c

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "two factor result code is Activity.RESULT_CANCELED"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOldIrisStateForTwoFactor:Z

    if-nez v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_2b
    const-string/jumbo v2, "unlock_set_two_factor"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    return-void

    :cond_2c
    :try_start_5
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "two factor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_a
    return-void

    :catch_2
    move-exception v9

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SettingNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_2d
    const/16 v2, 0x2719

    move/from16 v0, p1

    if-ne v0, v2, :cond_33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mBackupUserIdForKnox:I

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    if-eqz v21, :cond_1

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_32

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v2, :cond_30

    const v2, 0x7f0b09b9

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    :cond_2e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v22, :cond_2f

    invoke-virtual/range {v22 .. v22}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    :cond_30
    const v2, 0x7f0b05d8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_b

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    sget-object v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_c

    :cond_32
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_c

    :cond_33
    const/16 v2, 0x271d

    move/from16 v0, p1

    if-ne v0, v2, :cond_3b

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_37

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_iris"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    :cond_34
    if-eqz v22, :cond_35

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_35
    if-eqz v21, :cond_36

    invoke-virtual/range {v21 .. v21}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationIris()V

    goto/16 :goto_1

    :cond_37
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "onActivityResult -> Inside container -> resultCode not RESULT_OK, disabling Iris"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-nez v2, :cond_39

    if-eqz v22, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_39
    if-eqz v22, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v2, :cond_3a

    const v2, 0x7f0b09b9

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_3a
    const v2, 0x7f0b05d8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_3b
    const/16 v2, 0x271b

    move/from16 v0, p1

    if-ne v0, v2, :cond_47

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In onActivityResult: FIDO is set, resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v2, :cond_41

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v21, :cond_3c

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v2, :cond_3f

    const v2, 0x7f0b09b9

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_3c
    :goto_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v22, :cond_3d

    invoke-virtual/range {v22 .. v22}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3d
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "In onActivityResult: Fingerprint is set as lock : "

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v16, :cond_3e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_3f
    const v2, 0x7f0b05d8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_d

    :cond_40
    if-nez p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v21, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_41
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_iris"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v22, :cond_42

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v2, :cond_45

    const v2, 0x7f0b09b9

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_42
    :goto_e
    if-eqz v21, :cond_43

    invoke-virtual/range {v21 .. v21}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_43
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "In onActivityResult: Iris is set as lock : "

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v16, :cond_44

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_45
    const v2, 0x7f0b05d8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_e

    :cond_46
    if-nez p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_iris"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v22, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_47
    const/16 v2, 0x271c

    move/from16 v0, p1

    if-ne v0, v2, :cond_4f

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In onActivityResult: FIDO is dereg, resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "In onActivityResult: De-registration for fingerprint is completed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v21, :cond_48

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    :cond_49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    goto/16 :goto_1

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "In onActivityResult: De-registration for iris is completed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_iris"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v22, :cond_4b

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    :cond_4c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    goto/16 :goto_1

    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "In onActivityResult: send intent for registration for Fingerprint"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "dereg"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fido_user_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "fido_type"

    const-string/jumbo v3, "fido_type_fingerprint"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x271b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "In onActivityResult: send intent for registration for Iris"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "dereg"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fido_user_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "fido_type"

    const-string/jumbo v3, "fido_type_iris"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x271b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_4f
    const/16 v2, 0x271a

    move/from16 v0, p1

    if-ne v0, v2, :cond_50

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "REQUEST_ENTERPRISE_IDENTITY_SET : "

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_0
    const-string/jumbo v3, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "confirm_credentials"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v3, :cond_1

    if-eqz v11, :cond_10

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, ":settings:hide_drawer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "has_challenge"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "challenge"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_fingerprint"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_face"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "fromSetupwizard"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "isFromKnoxSetDigitalLock"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mFromKnoxSetDigitalLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_iris"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "for_cred_req_boot"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forPrivateBackupKey"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forAppLockBackupKey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "fromKnoxKeyguard"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "fromChinaSUW"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x96

    if-lt v3, v4, :cond_13

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->skipBiometricsAuthentication()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string/jumbo v3, "fromScreenLock"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    :cond_2
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v11, :cond_14

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v11, :cond_15

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "disable_systemkey"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0808

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_5
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100253

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SCREEN_ID_CHOOSELOCK:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100254

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PATTERN:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100255

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PIN:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100256

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PASSWORD:I

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b08de

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100271

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SCREEN_ID_CHOOSELOCK:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100272

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PATTERN:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PIN:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100274

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PASSWORD:I

    :cond_9
    if-eqz p1, :cond_a

    const-string/jumbo v3, "password_confirmed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v3, "biometrics_confirmed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string/jumbo v3, "waiting_for_confirmation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string/jumbo v3, "encrypt_requested_quality"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    const-string/jumbo v3, "encrypt_requested_disabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v3, :cond_c

    :cond_b
    const v3, 0x7f0b0bd8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_c
    if-eqz p1, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_d

    const-string/jumbo v3, "KEY_USING_TWO_FACTOR"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const-string/jumbo v3, "KEY_SELECTED_TWO_FACTOR_TYPE"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const-string/jumbo v3, "KEY_SELECTED_KNOX_SCREEN"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    :cond_d
    const-string/jumbo v3, "persona"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    const-string/jumbo v3, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_17

    sput v15, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    :goto_8
    const-string/jumbo v3, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b1372

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_19

    const-string/jumbo v3, "unlock_set_password"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    :cond_f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v9, :cond_18

    :goto_a
    invoke-static {v3, v9}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    sput v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto/16 :goto_8

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    goto :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_1c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    if-eqz v3, :cond_1b

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v3, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    goto :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v3, "unlock_set_two_factor"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    if-eqz v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "isFromKnoxSetDigitalLock"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1e
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mFromKnoxSetDigitalLock1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v13, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-nez v13, :cond_21

    const v3, 0x7f0b1377

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v3, 0x64

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZZI)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto/16 :goto_9

    :cond_1f
    const/4 v13, 0x1

    goto :goto_c

    :cond_20
    const/4 v13, 0x0

    goto :goto_c

    :cond_21
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto/16 :goto_9
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->DisableSystemKey(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_1
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_2
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    :cond_3
    :goto_0
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UseBioPref : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 22

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v18, "switch_fingerprint"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const-string/jumbo v18, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v6

    :goto_0
    if-eqz v8, :cond_6

    sget v18, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "lock_screen_fingerprint"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setBiometricsDefaultDesc(Landroid/preference/PreferenceScreen;)V

    :cond_0
    :goto_2
    const/16 v18, 0x0

    return v18

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v18

    if-eqz v18, :cond_5

    const-string/jumbo v18, "ChooseLockGenericFragment"

    const-string/jumbo v19, "onPreferenceChange: Fingerprint is enrolled before start to enable Fido"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    goto :goto_1

    :cond_5
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockEnable()V

    sget-object v18, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v18

    if-nez v18, :cond_7

    const/4 v5, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "knox_finger_print_plus"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isMultifactorAuthEnforced()Z

    move-result v18

    if-eqz v18, :cond_c

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    const/16 v18, 0x0

    return v18

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    if-nez v6, :cond_9

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_9
    :goto_4
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockDisable()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    :cond_b
    sget-object v18, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_1

    :cond_c
    if-eqz v5, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableTwoFactorIfEnabled()V

    goto :goto_4

    :cond_d
    if-eqz v8, :cond_11

    sget v18, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockEnable()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    const-string/jumbo v18, "unlock_set_pin"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v18, "unlock_set_pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v13, :cond_e

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_e
    if-eqz v12, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v18, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_10

    const-string/jumbo v18, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_10
    const/16 v18, 0x0

    return v18

    :cond_11
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockDisable()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "unlock_set_pin"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v18, "unlock_set_pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v13, :cond_12

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_12
    if-eqz v12, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v18, "switch_iris"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29

    const-string/jumbo v18, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v6

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x100

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    const/4 v9, 0x1

    :goto_6
    if-eqz v8, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v18

    if-eqz v18, :cond_1b

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v18

    if-eqz v18, :cond_1b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v18

    if-eqz v18, :cond_1f

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationIris()V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_17

    const-string/jumbo v18, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockDisable()V

    const-string/jumbo v18, "unlock_set_pin"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v18, "unlock_set_pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v13, :cond_16

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_16
    if-eqz v12, :cond_17

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_17
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setBiometricsDefaultDesc(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_2

    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startIrisScreenLock()V

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v18

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    if-eqz v9, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showIrisTurnOnDialogForChooseLock()V

    goto/16 :goto_7

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startIrisLockSettings()V

    goto/16 :goto_7

    :cond_1e
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.settings.iris.IrisLockSettings"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "previousStage"

    const-string/jumbo v19, "lock_screen_iris"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "from_irisSettings"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_7

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_1f
    if-eqz v9, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showIrisTurnOnDialogForChooseLock()V

    goto/16 :goto_7

    :cond_20
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v18

    if-nez v18, :cond_22

    const/4 v4, 0x1

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "knox_finger_print_plus"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isMultifactorAuthEnforced()Z

    move-result v18

    if-eqz v18, :cond_27

    if-eqz v6, :cond_23

    if-eqz v4, :cond_23

    const/16 v18, 0x0

    return v18

    :cond_22
    const/4 v4, 0x0

    goto :goto_a

    :cond_23
    if-nez v6, :cond_24

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_24
    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v18

    if-eqz v18, :cond_28

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    move/from16 v18, v0

    if-eqz v18, :cond_25

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationIris()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_17

    const-string/jumbo v18, "unlock_set_pin"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v18, "unlock_set_pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v13, :cond_26

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_26
    if-eqz v12, :cond_17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_27
    if-eqz v4, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableTwoFactorIfEnabled()V

    goto :goto_b

    :cond_28
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_c

    :cond_29
    const-string/jumbo v18, "switch_face"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v18

    if-eqz v18, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v18

    if-eqz v18, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v18

    if-eqz v18, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFaceTurnOnDialog()V

    goto/16 :goto_2

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v18

    if-eqz v18, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFaceTurnOnDialog()V

    goto/16 :goto_2

    :cond_2b
    const-string/jumbo v18, "lock_screen_face"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;[BZ)V

    const/16 v18, 0x0

    return v18

    :cond_2c
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v21, 0x1

    invoke-static/range {v18 .. v21}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_2

    :cond_2d
    const-string/jumbo v18, "ChooseLockGenericFragment"

    const-string/jumbo v19, "mFaceManager is null!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2e
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v21, 0x1

    invoke-static/range {v18 .. v21}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isResumed()Z

    move-result v4

    if-nez v4, :cond_0

    return v7

    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v4, "unlock_set_pattern"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "unlock_set_pin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "unlock_set_password"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v4

    if-nez v4, :cond_3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    return v7

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0802

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v7

    :cond_5
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->isEmpty(II)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v3, 0x1

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeEncryptionPopup(Ljava/lang/String;)V

    return v7

    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0802

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b07fc

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "turn-on"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "Block"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_8

    const v3, 0x9100

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_4
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "On resuming generic activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_5

    const/high16 v3, 0x70000

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :cond_5
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "fromSearch"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "fromSearch"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_6
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-eqz v3, :cond_9

    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "ScreenLockType"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v0, :cond_3

    const/high16 v3, 0x10000

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    if-nez v3, :cond_7

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "biometrics_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "KEY_SELECTED_KNOX_SCREEN"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KEY_USING_TWO_FACTOR"

    sget-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "KEY_SELECTED_TWO_FACTOR_TYPE"

    sget v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_SELECTED_KNOX_SCREEN"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenLockType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v13, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "universal_lock_switch_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    :cond_1
    const v13, 0x7f04006c

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v13, 0x7f1101c5

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v13, 0x7f1101c6

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v13, :cond_9

    if-eqz v2, :cond_7

    const v13, 0x7f0b07fb

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f0b0782

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b0889

    invoke-virtual {v13, v14}, Landroid/app/Activity;->setTitle(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v13, v14}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-nez v13, :cond_1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v13, :cond_1

    const v13, 0x7f04006d

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v13, 0x7f1101c7

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v13, 0x7f1101cb

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v13, 0x7f1101c9

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v13, 0x7f1101ca

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v3, v13, v14}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_7
    const v13, 0x7f0b0780

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    const v13, 0x7f0b0781

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v13, :cond_b

    if-eqz v2, :cond_a

    const v13, 0x7f0b0865

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f0b0864

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    const v13, 0x7f0b0863

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v13, :cond_2

    const v13, 0x7f0b08f7

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_c

    const v13, 0x7f0b08f9

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_c
    const v13, 0x7f0b08f8

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method public turnOffFaceLock()V
    .locals 3

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "turnOffFaceLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "switch_face"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public turnOnFaceLock()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "turnOnFaceLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "switch_face"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v3, "switch_iris"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v3, "lock_screen_face"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;[BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "FaceManager is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOnIrisLock()V
    .locals 5

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "turnOnIrisLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "switch_face"

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x100

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v2, "switch_iris"

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Tried to update password without confirming it"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    if-ne v3, v7, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    const-string/jumbo v6, "None"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUnlockMethodAndFinish update VPN state - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    const-string/jumbo v4, "[Legacy VPN]"

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v4, "LOCKDOWN_VPN"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_7
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_8
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "interaction_control_exit_locked"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :goto_4
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    const-string/jumbo v6, "Swipe"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const v3, 0x61000

    if-ne p1, v3, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public wManagerChanged()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wmanager_connected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_smartlock_supported"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method
