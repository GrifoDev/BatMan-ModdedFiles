.class public Lcom/android/keyguard/KeyguardRMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardRMMView$1;,
        Lcom/android/keyguard/KeyguardRMMView$2;,
        Lcom/android/keyguard/KeyguardRMMView$3;
    }
.end annotation


# instance fields
.field private mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private mClientCallButton:Landroid/widget/ImageButton;

.field private mClientContact:Landroid/widget/TextView;

.field private mClientInfoView:Landroid/widget/LinearLayout;

.field private mClientMessage:Landroid/widget/TextView;

.field private mClientName:Ljava/lang/String;

.field private mClientTitle:Landroid/widget/TextView;

.field private mContactArea:Landroid/view/ViewGroup;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentOrientation:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsVoiceCapacity:Z

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRMMContainer:Landroid/view/ViewGroup;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardRMMView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardRMMView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardRMMView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMView;->checkUnlockAttempts(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->setRMMInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRMMView$1;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/keyguard/KeyguardRMMView$2;-><init>(Lcom/android/keyguard/KeyguardRMMView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRMMView$3;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private checkUnlockAttempts(I)V
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v4, "KeyguardRMMView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkUnlockAttempts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v8, v8}, Lcom/android/keyguard/KeyguardRMMView;->resetPasswordText(ZZ)V

    if-nez p1, :cond_1

    :try_start_0
    new-instance v4, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-interface {v4, v5, v0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "KeyguardRMMView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed CIS LOCK clear!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    if-lez p1, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    rem-int v4, p1, v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardRMMView;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v5

    invoke-interface {v4, v5, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    goto :goto_1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    return-wide p2
.end method

.method private getRemoteLockoutAttemptDeadline(I)J
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v4, :cond_0

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6, v7, p1}, Lcom/android/keyguard/KeyguardRMMView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6, v7, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v6

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0, v1, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v0

    :cond_2
    return-wide v0
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KeyguardRMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRMMInfo()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRMMInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v2, :cond_0

    const-string/jumbo v2, "KeyguardRMMView"

    const-string/jumbo v3, "mRemoteLockInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "\\r\\n|\\r|\\n"

    const-string/jumbo v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string/jumbo v2, "KeyguardRMMView"

    const-string/jumbo v3, "mRemoteLockInfo.message is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "KeyguardRMMView"

    const-string/jumbo v3, "mRemoteLockInfo.phoneNumber is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/keyguard/KeyguardRMMView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardRMMView$5;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long v0, v2, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private updateLayout()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientInfoView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dex_message_area_padding_side:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dex_message_area_padding_side:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_contact_area_side_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_contact_area_side_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_container_top_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_container_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$integer;->kg_fmm_message_max_line_portrait:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_fmm_contact_area_side_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_fmm_contact_area_side_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$integer;->kg_fmm_message_max_line_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->rmmEntry:I

    return v0
.end method

.method protected getSecurityViewId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_incorrect_pin:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v0, "KeyguardRMMView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardRMMView$6;-><init>(Lcom/android/keyguard/KeyguardRMMView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRMMView$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget v1, Lcom/android/keyguard/R$id;->rmm_info_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientInfoView:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_rmm_title:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_rmm_message:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_rmm_contact_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_rmm_contact_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_rmm_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/keyguard/R$id;->rmm_contact_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->setRMMInfo()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/keyguard/KeyguardRMMView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardRMMView$4;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onPause()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_rmm_lock_instructions:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardRMMView;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_rmm_lock_instructions:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    const v4, 0x10409fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 7

    const/4 v5, 0x1

    const-string/jumbo v3, "KeyguardRMMView"

    const-string/jumbo v4, "verifyPasswordAndUnlock()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryInputEnabled(Z)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v4

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    invoke-virtual {p0, v5, v5}, Lcom/android/keyguard/KeyguardRMMView;->resetPasswordText(ZZ)V

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryInputEnabled(Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    const/4 v6, 0x2

    invoke-interface {v3, v6, v1, v4, v5}, Lcom/android/internal/widget/ILockSettings;->checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KeyguardRMMView"

    const-string/jumbo v4, "Can\'t connect CIS_LOCK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
