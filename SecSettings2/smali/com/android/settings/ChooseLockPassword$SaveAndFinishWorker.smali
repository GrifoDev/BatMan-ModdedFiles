.class Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 12

    const/16 v11, 0x64

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get13()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-lt v5, v11, :cond_7

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    :goto_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get15()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v5, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get13()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_2
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v5, :cond_5

    const/4 v3, 0x0

    :try_start_0
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v5, v6, v8, v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_3
    if-nez v3, :cond_4

    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "critical: no token returned for known good password."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "hw_auth_token"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-lt v5, v11, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get13()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_6
    :goto_4
    return-object v2

    :cond_7
    iget v4, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "getActivity() got null value. It is for setIsFingerAsSupplement"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get16()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_a
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get16()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-lt v5, v11, :cond_3

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-nez v5, :cond_b

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5, v9}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5, v10}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x1

    :try_start_1
    new-array v3, v5, [B

    const/4 v5, -0x1

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "critical: challenge returned zero."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/ChooseLockPassword;

    invoke-static {v5, v10}, Lcom/android/settings/ChooseLockPassword;->-wrap1(Lcom/android/settings/ChooseLockPassword;I)V

    goto :goto_4
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V
    .locals 10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    move/from16 v0, p8

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    move/from16 v0, p9

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->start()V

    return-void
.end method
