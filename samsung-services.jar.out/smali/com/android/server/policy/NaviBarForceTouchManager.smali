.class public Lcom/android/server/policy/NaviBarForceTouchManager;
.super Ljava/lang/Object;
.source "NaviBarForceTouchManager.java"


# static fields
.field public static final CENTER_KEY:I = 0x2

.field private static final DEBUG:Z = true

.field public static final LEFT_KEY:I = 0x1

.field public static final RIGHT_KEY:I = 0x3

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NaviBarForceTouchManager"


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHapticPlayed:Z

.field private mInitScreenHeight:I

.field private mInitScreenWidth:I

.field private mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/NaviBarForceTouchManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private dismissKeyguard()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_unlock_with_home_button"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "NaviBarForceTouchManager"

    const-string/jumbo v2, "dismissKeyguard by force touch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/NaviBarForceTouchManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/NaviBarForceTouchManager$1;-><init>(Lcom/android/server/policy/NaviBarForceTouchManager;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private forceClickImmersive(I)V
    .locals 3

    const-string/jumbo v0, "NaviBarForceTouchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceClickImmersive() buttonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEventId(IIZ)I
    .locals 10

    const/4 v9, -0x1

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    return v9

    :cond_1
    iget-object v6, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    iget v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v3, v6

    if-eqz p3, :cond_2

    div-int/lit8 v0, v3, 0x4

    :goto_0
    const-string/jumbo v6, "NaviBarForceTouchManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEventId() x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isNaviVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", screenH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", currentHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", screenW="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", deadzone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", frame="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v6, v3, v0

    sub-int v6, v4, v6

    if-ge p2, v6, :cond_3

    return v9

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    div-int/lit8 v6, v5, 0x3

    if-ge p1, v6, :cond_5

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1

    :cond_5
    div-int/lit8 v6, v5, 0x3

    if-le p1, v6, :cond_6

    mul-int/lit8 v6, v5, 0x2

    div-int/lit8 v6, v6, 0x3

    if-ge p1, v6, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    mul-int/lit8 v6, v5, 0x2

    div-int/lit8 v6, v6, 0x3

    if-le p1, v6, :cond_4

    const/4 v1, 0x3

    goto :goto_1
.end method

.method private injectKeyEvent(I)V
    .locals 6

    const/high16 v3, 0x100000

    const/4 v2, 0x0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    return-void
.end method

.method private isConventionalMode()Z
    .locals 3

    iget v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onForcePressed(II)V
    .locals 9

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/NaviBarForceTouchManager;->getEventId(IIZ)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->isConventionalMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v3, "NaviBarForceTouchManager"

    const-string/jumbo v4, "conventional mode , ignore force touch."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "NaviBarForceTouchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onForcePressed() x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/policy/NaviBarForceTouchManager;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v3, "NaviBarForceTouchManager"

    const-string/jumbo v4, "TalkbackEnabled,  skip force action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-ne v0, v7, :cond_4

    move v1, v3

    :cond_4
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc376

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    iput-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    :cond_5
    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    :cond_6
    :goto_0
    return-void

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->forceClickImmersive(I)V

    goto :goto_0
.end method

.method public onForcePressedSleep()V
    .locals 2

    const-string/jumbo v0, "NaviBarForceTouchManager"

    const-string/jumbo v1, "onForcePressedSleep()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    return-void
.end method

.method public onForceReleased(II)V
    .locals 5

    const-string/jumbo v0, "NaviBarForceTouchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForceReleased() x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHapticPlayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v2, 0xc377

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    return-void
.end method

.method public onForceReleasedSleep(Z)V
    .locals 5

    const-string/jumbo v0, "NaviBarForceTouchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForceReleasedSleep() playHaptic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v2, 0xc377

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    iput p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    iput p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenWidth:I

    iput p4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    return-void
.end method
