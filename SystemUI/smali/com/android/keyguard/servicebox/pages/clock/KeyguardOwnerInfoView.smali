.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
.super Lcom/android/keyguard/KeyguardTextView;
.source "KeyguardOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;
    }
.end annotation


# instance fields
.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowCMAS:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mFontScale:F

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private setCMASIcon(Z)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_cmas_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getKeyguardFontScale()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getKeyguardFontScale()F

    move-result v4

    sub-float/2addr v4, v8

    mul-float/2addr v4, v8

    add-float v1, v3, v4

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    invoke-virtual {v0, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0, v7, v7, v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_cmas_drawable_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablePadding(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method private updateCMASText(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CMAS:Z

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_2

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PRESIDENTIAL_CMAS:Z

    if-nez v2, :cond_4

    sget v0, Lcom/android/keyguard/R$string;->keyguard_cmas_text:I

    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    :cond_0
    :goto_4
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->keyguard_presidential_cmas_text:I

    goto :goto_3

    :cond_5
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    goto :goto_4
.end method

.method private updateOwnerInfo(I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string/jumbo v4, "KeyguardOwnerInfoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateOwnerInfo(hasCMAS): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    :cond_0
    const-string/jumbo v4, "KeyguardOwnerInfoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Show CMAS on owner info space ! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateCMASText(I)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    invoke-virtual {p0, v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KeyguardOwnerInfoView"

    const-string/jumbo v5, "updateOwnerInfo "

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    invoke-virtual {p0, v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mFontScale:F

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onDetachedFromWindowInternal()V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onFinishInflate()V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateChildViewsLook()V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public updateOwnerInfo(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
