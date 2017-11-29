.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAbsKeyInputView$1;,
        Lcom/android/keyguard/KeyguardAbsKeyInputView$2;,
        Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I


# instance fields
.field protected mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mBouncerShowing:Z

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCarrierText:Landroid/view/View;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentOrientation:I

.field private mDismissing:Z

.field private mDpmMinimumPasswordLength:I

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mEntry:Ljava/lang/String;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mGrxFailedUnlockTimes:I

.field private mGrxIsQuickUnlock:I

.field private mGrxLockOutTime:I

.field private mIsAccountExist:Z

.field protected mIsFingeprintEnabled:Z

.field protected mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxCountdownTimes:I

.field protected mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityView:Landroid/widget/LinearLayout;

.field protected mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSwitchImeButton:Landroid/view/View;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mVibratorService:Landroid/os/SystemVibrator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    return v0
.end method

.method private static synthetic -getcom-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->values()[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    const v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->update_quick_unlock_params(I)V

    return-void
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->start()V

    return-void
.end method

.method private disableDevicePermanently()V
    .locals 3

    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x1040a09

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private reportGsimLog()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsFingeprintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "LSPN"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "LSPF"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsFingeprintEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "LSWF"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "LSWN"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-getcom-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    :cond_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_security_input_box_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_security_input_box_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->kg_dex_security_view_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v8, v6, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_security_ime_button_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v5, :cond_4

    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v4, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x31

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_5
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_security_ime_button_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/16 :goto_2

    :cond_8
    :try_start_1
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x51

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public add_failed_unlock()V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxFailedUnlockTimes:I

    const v1, 0xf

    if-ge v0, v1, :cond_0

    const v1, 0x1

    add-int v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->set_failed_unlock_times(I)V

    :cond_0
    return-void
.end method

.method protected displayDefaultSecurityMessage()V
    .locals 0

    return-void
.end method

.method public doHapticKeyClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method protected getMessageWithCount(I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v3

    sub-int v1, v2, v3

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    if-lez v2, :cond_0

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_remaining_attempts:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromptReasonStringRes(I)I
.end method

.method protected abstract getSecurityViewId()I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method public grx_chivato(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->updateDexButtonVisiblity()V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateLayout()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$integer;->config_max_unlock_countdown_times:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    sget v4, Lcom/android/keyguard/R$id;->biometric_timeout_message:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_0
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECT_CALL_TO_ECC:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibratorService:Landroid/os/SystemVibrator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_sub_help_text:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    sget v4, Lcom/android/keyguard/R$id;->password_entry_box:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getSecurityViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/keyguard/R$id;->bottom_container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateLayout()V

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    sget v6, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->checkAccountExist(Landroid/content/Context;)V

    :cond_3
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsFingeprintEnabled:Z

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/android/keyguard/R$id;->stub_keyguard_face_icon_view:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_5
    return-void

    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 20

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    const/4 v4, 0x1

    :goto_0
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {v8, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v9

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "com.android.settings"

    const-string/jumbo v14, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "lockscreen.password_type"

    invoke-virtual {v6, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "lockscreen.password_min"

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "lockscreen.password_max"

    invoke-virtual {v6, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "confirm_credentials"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v13, "isRecovery"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x400000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x800000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string/jumbo v13, "KeyguardAbsKeyInputView"

    const-string/jumbo v14, "onPasswordChecked"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-interface {v13, v0, v14, v15}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v4, :cond_1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_1
    sget-boolean v13, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v13, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reportGsimLog()V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->clear()V

    :cond_3
    if-eqz p2, :cond_b

    const/4 v13, 0x0

    :goto_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v13, "KeyguardAbsKeyInputView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Can\'t find the component "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibratorService:Landroid/os/SystemVibrator;

    sget-object v14, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v15, 0xc378

    const/16 v16, -0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1, v14}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_6
    const-wide/16 v2, 0x0

    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v14, 0x0

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v13, v0, v14, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    :cond_7
    :goto_4
    const-wide/16 v14, 0x0

    cmp-long v13, v2, v14

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object v11

    if-lez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v13}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxFailedUnlockTimes:I

    if-nez v14, :cond_9

    if-lez p3, :cond_7

    move/from16 v0, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxLockOutTime:I

    :goto_6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v14

    move/from16 v0, p3

    invoke-virtual {v13, v14, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxLockOutTime:I

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v14, 0x1

    invoke-interface {v13, v11, v14}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected onUserInput()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setSubSecurityMessage(IZI)V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(ZZ)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method protected setSubSecurityMessage(IZI)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p3, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public set_failed_unlock_times(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "b_failed_unlock_times"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxFailedUnlockTimes:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->update_lockout_time(I)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 8

    const/16 v7, 0x1388

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public try_to_unlock(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 0

    return-void
.end method

.method public update_lockout_time(I)V
    .locals 3

    const v0, 0x10

    if-ge p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const v0, 0x0

    :goto_0
    const v1, 0x3e8

    mul-int v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxLockOutTime:I

    return-void

    :cond_0
    const v0, 0xe10

    goto :goto_0

    :pswitch_0
    const v0, 0x0

    goto :goto_0

    :pswitch_1
    const v0, 0x0

    goto :goto_0

    :pswitch_2
    const v0, 0x0

    goto :goto_0

    :pswitch_3
    const v0, 0x0

    goto :goto_0

    :pswitch_4
    const v0, 0x0

    goto :goto_0

    :pswitch_5
    const v0, 0x1e

    goto :goto_0

    :pswitch_6
    const v0, 0x0

    goto :goto_0

    :pswitch_7
    const v0, 0x0

    goto :goto_0

    :pswitch_8
    const v0, 0x0

    goto :goto_0

    :pswitch_9
    const v0, 0x0

    goto :goto_0

    :pswitch_a
    const v0, 0x3c

    goto :goto_0

    :pswitch_b
    const v0, 0xb4

    goto :goto_0

    :pswitch_c
    const v0, 0x12c

    goto :goto_0

    :pswitch_d
    const v0, 0x258

    goto :goto_0

    :pswitch_e
    const v0, 0x708

    goto :goto_0

    :pswitch_f
    const v0, 0xe10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public update_quick_unlock_params(I)V
    .locals 4

    iput p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxIsQuickUnlock:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "b_failed_unlock_times"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mGrxFailedUnlockTimes:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->update_lockout_time(I)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "KeyguardAbsKeyInputView"

    const-string/jumbo v2, "verifyPasswordAndUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method public verify_quick_unlock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$CheckPinPass;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$CheckPinPass;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public verify_quick_unlock(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    move-object v2, p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$CheckPinPass;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$CheckPinPass;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
