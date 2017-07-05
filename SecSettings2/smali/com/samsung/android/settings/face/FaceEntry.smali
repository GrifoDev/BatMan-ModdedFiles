.class public Lcom/samsung/android/settings/face/FaceEntry;
.super Landroid/app/Activity;
.source "FaceEntry.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceEntry$1;,
        Lcom/samsung/android/settings/face/FaceEntry$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsFromSwitch:Z

.field private mIsWaitingResult:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mToken:[B


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceEntry;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceEntry;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceEntry;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceEntry;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceEntry;->isSearchEntry:Z

    new-instance v0, Lcom/samsung/android/settings/face/FaceEntry$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/face/FaceEntry$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/face/FaceEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIdentifyFace:Z

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/face/FaceEntry$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceEntry$2;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private authenticateFace()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v3, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_face_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    sget v3, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceEntry;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/face/FaceEntry;->overridePendingTransition(II)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FcstFaceEntry"

    const-string/jumbo v3, "authenticateFingerprint : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    const/4 v4, 0x0

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v6

    :cond_0
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    const v0, 0x7f0b1296

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "FcstFaceEntry"

    const-string/jumbo v5, "There is no enrolled face. Run FaceLockSettings!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "always_finish_activities"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0b010b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b070c

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0703

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/face/FaceEntry$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/face/FaceEntry$3;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/face/FaceEntry$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/FaceEntry$4;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "FcstFaceEntry"

    const v5, 0x7f0b08a3

    invoke-static {p0, v5, v4}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "face_register_external"

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "key_face_settings_entry"

    iput-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    :cond_2
    const-string/jumbo v4, "previousStage"

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "tokenFromLock"

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "isAfw"

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "from_switch"

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.USER_ID"

    sget v5, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "FcstFaceEntry"

    const-string/jumbo v5, "runRegister : Activity Not Found !"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFaceTurnOnDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FaceEntry_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    const v1, 0x7f0b0706

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f0b0707

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0703

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/FaceEntry$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceEntry$5;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/FaceEntry$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceEntry$6;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 14

    const v5, 0x7f0b08a3

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v13, p1

    if-nez p1, :cond_1

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    if-eqz v0, :cond_2

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "identifyFace"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIdentifyFace:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "needTurnOnCheck"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/settings/face/FaceEntry;->isSearchEntry:Z

    if-eqz v0, :cond_3

    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    move-object v0, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v13

    check-cast v6, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v7, "com.samsung.android.settings.face.FaceSettings"

    move-object v8, v2

    move v9, v5

    move-object v10, v3

    move-object v11, v3

    move v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    move-object v0, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult : requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    const/16 v1, 0x65

    if-ne p1, v1, :cond_6

    if-ne p2, v5, :cond_4

    if-eqz p3, :cond_0

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/FaceEntry;->setResult(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->showFaceTurnOnDialog()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-static {v1, v0, v2, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x68

    if-ne p1, v1, :cond_a

    if-ne p2, v5, :cond_8

    iput-boolean v6, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIdentifyFace:Z

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/settings/face/FaceEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/settings/face/FaceEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "=====onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FaceEntry"

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "onCreate() : isDesktopMode is TRUE."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b08ab

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0b08a3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b0795

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->key:Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "Not support bio face. finish this activity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isAfw"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsAfw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsFromSwitch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_6

    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "Error. mFaceManager is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_7

    const v1, 0x7f0b0709

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->showSensorErrorDialog(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_8

    const-string/jumbo v1, "IsWaitingResult"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz v1, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    return-void

    :cond_9
    const-string/jumbo v1, "face_register_external"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "Face already registered!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void

    :cond_a
    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->authenticateFace()V

    :goto_1
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->launchChooseOrConfirmLock()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "=====onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "FaceEntry"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0
.end method

.method public turnOffFaceLock()V
    .locals 2

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "turnOffFaceLock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void
.end method

.method public turnOnFaceLock()V
    .locals 2

    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "turnOnFaceLock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void
.end method
