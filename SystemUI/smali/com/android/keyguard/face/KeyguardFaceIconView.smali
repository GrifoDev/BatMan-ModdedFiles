.class public Lcom/android/keyguard/face/KeyguardFaceIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardFaceIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/face/KeyguardFaceIconView$1;,
        Lcom/android/keyguard/face/KeyguardFaceIconView$2;
    }
.end annotation


# static fields
.field private static final mSineInOut33:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mFaceRecognitionIcon:Landroid/widget/ImageView;

.field private mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mState:I

.field private mTwinkleAnimator:Landroid/animation/ObjectAnimator;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/face/KeyguardFaceIconView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/face/KeyguardFaceIconView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/face/KeyguardFaceIconView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getIconState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/face/KeyguardFaceIconView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->updateIconDrawable(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->updateIconVisiblity()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e2e147b    # 0.17f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    new-instance v0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/face/KeyguardFaceIconView$1;-><init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/face/KeyguardFaceIconView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/face/KeyguardFaceIconView$2;-><init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method private getIconState()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingFaceRecognitionRetry()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    cmpl-float v1, p3, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateIconDrawable(I)V
    .locals 5

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->ic_face_recognition_bouncer:I

    sget v3, Lcom/android/keyguard/R$drawable;->ic_face_recognition_bouncer_whitebg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->ic_face_recognition_bouncer_pressed:I

    sget v3, Lcom/android/keyguard/R$drawable;->ic_face_recognition_bouncer_pressed_whitebg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->ic_face_recognition_bouncer_retry:I

    sget v3, Lcom/android/keyguard/R$drawable;->ic_face_recognition_bouncer_retry_whitebg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIconVisiblity()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->updateIconDrawable(I)V

    iget v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mState:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/face/KeyguardFaceIconView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/face/KeyguardFaceIconView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method public isFaceRecognitionRetryIconSelected(FF)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/keyguard/face/KeyguardFaceIconView;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

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

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardFaceIconView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "alpha"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/keyguard/face/KeyguardFaceIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/face/KeyguardFaceIconView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/face/KeyguardFaceIconView$3;-><init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v0, Lcom/android/keyguard/R$id;->ic_face_recognition_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->ic_face_recognition_retry_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView;->mFaceRecognitionRetryIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/face/KeyguardFaceIconView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/face/KeyguardFaceIconView$4;-><init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/keyguard/face/KeyguardFaceIconView;->updateIconDrawable(I)V

    invoke-direct {p0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->updateIconVisiblity()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method
