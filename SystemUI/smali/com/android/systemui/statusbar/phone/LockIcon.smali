.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$1;,
        Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mCurrentState:I

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private mHasFingerPrintIcon:Z

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private getState()I
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingFaceRecognitionRetry()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    return v3

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x5

    return v3

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private lockIconPossible()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateClickability()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private updateImageDrawable(I)V
    .locals 4

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const v1, 0x7f02032c

    const v2, 0x7f02032f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const v1, 0x7f02032d

    const v2, 0x7f02032e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const v1, 0x7f0201a0

    const v2, 0x7f0201a1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const v1, 0x7f02019f

    const v2, 0x7f0201a2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->lockIconPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v7, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateImageDrawable(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return v8

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->isLockIconSelected(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v6, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;->trustCircleSelected()V

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    return-void
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const-string/jumbo v1, "LockIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLastState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mDeviceInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLastDeviceInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLastScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",  force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v1, v2, :cond_5

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v1, v5, :cond_7

    :cond_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateImageDrawable(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f074c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0972

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    goto :goto_1
.end method
