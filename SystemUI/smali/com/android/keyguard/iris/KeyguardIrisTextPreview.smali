.class public Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardIrisTextPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;,
        Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerShowing:Z

.field private mCurrentMobileKeyboardState:I

.field private final mHandler:Landroid/os/Handler;

.field private mIrisCancelButton:Landroid/widget/ImageView;

.field private mIrisNomatchText:Landroid/widget/TextView;

.field private mIrisPreviewText:Landroid/widget/TextView;

.field private mKeyguardShowing:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSupportMKeyboardModel:Z

.field private final mUpdateHelpTextRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->isTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->changeTextAndIconColorOnWhiteWallpaper()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->clearWithPreviewText(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisHelpText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisNomatchText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->updatePreviewVisibility(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;-><init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;-><init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private changeTextAndIconColorOnWhiteWallpaper()V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->iris_ic_cancel:I

    sget v3, Lcom/android/keyguard/R$drawable;->iris_ic_cancel_white_solution:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private clearWithPreviewText(I)V
    .locals 3

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isTimerRunning()Z
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setIrisHelpText(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisTimeoutErrorCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    const-string/jumbo v2, ""

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private setIrisNomatchText(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePreviewVisibility(Z)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->clearWithPreviewText(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->iris_guide_str_for_text_preview:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisHelpText(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->clearWithPreviewText(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisHelpText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isInViewArea(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getX()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getY()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->updatePreviewVisibility(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardIrisTextPreview"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_help_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_nomatch_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->clearWithPreviewText(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->iris_guide_str_for_text_preview:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisHelpText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->changeTextAndIconColorOnWhiteWallpaper()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    iput-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSupportMKeyboardModel:Z

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    :cond_0
    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$3;-><init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->isInViewArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    return v4

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KeyguardIrisTextPreview"

    const-string/jumbo v2, "Stop recognition by touch on IrisPreivew"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->updatePreviewVisibility(Z)V

    :goto_0
    return v4

    :cond_1
    const-string/jumbo v1, "KeyguardIrisTextPreview"

    const-string/jumbo v2, "update iris recognition by touch on IrisPreivew"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    invoke-direct {p0, v4}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->updatePreviewVisibility(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
