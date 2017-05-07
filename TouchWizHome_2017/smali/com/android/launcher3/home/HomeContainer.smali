.class public Lcom/android/launcher3/home/HomeContainer;
.super Landroid/widget/FrameLayout;
.source "HomeContainer.java"


# static fields
.field private static final FACTOR_INTERVAL:I = 0x2

.field private static final FACTOR_VALID_DECIMAL_PLACE:I = 0x2

.field private static final MAX_SWIPE_ANGLE:F = 1.2252212f

.field private static final SFINDER_CLS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field private static final TAG:Ljava/lang/String; = "HomeContainer"

.field private static final THRESHOLD_DIST_START_SFINDER:I = 0xc8

.field private static final TOUCH_STATE_CONSUME:I = 0x1

.field private static final TOUCH_STATE_REST:I


# instance fields
.field private mActivateTouchSFinder:Z

.field private mController:Lcom/android/launcher3/home/HomeController;

.field private mDownwardFadeOutEnd:I

.field private mDownwardFadeOutStart:I

.field private mExternalPageIndicator:Landroid/view/View;

.field private mFadeOutRange:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHomeAlphaRatio:F

.field private mHomeShrinkFactor:F

.field private mIsInstalledSFinder:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiTouch:Z

.field private mOverlayEnd:I

.field private mOverlayStart:I

.field private mPageIndicatorScaleRatio:F

.field private mPageIndicatorShrinkFactor:F

.field private mPinchDelta:I

.field private mStartedSFinder:Z

.field private mTouchPointDistance:I

.field private mTouchState:I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mUpwardFadeOutEnd:I

.field private mUpwardFadeOutStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/HomeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeAlphaRatio:F

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.android.app.galaxyfinder"

    invoke-static {p1, v1}, Lcom/android/launcher3/Utilities;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    :cond_0
    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    return-void
.end method

.method private launchSfinder(Ljava/lang/String;Z)V
    .locals 9

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    if-eqz p2, :cond_0

    const v4, 0x7f040005

    const v5, 0x7f040007

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.galaxyfinder"

    const-string v7, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "launch_mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x10008000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_0
    const v4, 0x7f040004

    const v5, 0x7f040006

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "HomeContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to launch. tag= intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v6, "HomeContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launcher does not have the permission to launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "or use the exported attribute for this activity. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateScaleAndAlphaByTranslationY(F)V
    .locals 13

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v12

    if-lez v7, :cond_3

    move v6, p1

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutStart:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v2, v9, v9}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    sub-float v7, v11, v2

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeAlphaRatio:F

    mul-float/2addr v7, v8

    sub-float v7, v11, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    sub-float v8, v11, v8

    mul-float/2addr v8, v2

    add-float v5, v7, v8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeContainer;->setAlpha(F)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeContainer;->setScaleX(F)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeContainer;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    sub-float v8, v11, v8

    sub-float v9, v11, v2

    iget v10, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v9, v10

    sub-float v9, v11, v9

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void

    :cond_1
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    div-float/2addr v7, v8

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v3

    int-to-float v7, v3

    add-float v1, p1, v7

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    int-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    div-float/2addr v7, v8

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    :cond_5
    cmpl-float v7, p1, v12

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_1
    int-to-float v2, v7

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private willStartSFinder(FF)Z
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    float-to-double v4, p2

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const v3, 0x3f9cd40c

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/home/HomeController;

    iput-object p1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    goto :goto_1

    :pswitch_2
    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getPinchDelta()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    return v0
.end method

.method hasStartedSFinder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    return v0
.end method

.method isMultiTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    if-ne v8, v7, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v8, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7, v8, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    :pswitch_1
    iput-boolean v12, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-le v8, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    mul-int v9, v4, v4

    mul-int v10, v3, v3

    add-int/2addr v9, v10

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v9, v10

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    goto :goto_0

    :pswitch_3
    iput-boolean v12, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    iput-boolean v12, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    mul-int v8, v4, v4

    mul-int v9, v3, v3

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto/16 :goto_0

    :cond_1
    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_1

    :cond_2
    :goto_2
    :pswitch_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_1

    :pswitch_6
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    iput v5, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    iput v6, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-static {v7, v5, v6}, Lcom/android/launcher3/util/event/ScrollDetector;->setBlockArea(Lcom/android/launcher3/home/HomeController;FF)Z

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/util/event/ScrollDetector;->setTalkBackEnabled(Landroid/content/Context;)Z

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeContainer;->willStartSFinder(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    sub-float v8, v6, v8

    float-to-int v2, v8

    if-gez v2, :cond_3

    const-string v8, "swype_up"

    invoke-direct {p0, v8, v7}, Lcom/android/launcher3/home/HomeContainer;->launchSfinder(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_3
    const-string v8, "swype_down"

    invoke-direct {p0, v8, v12}, Lcom/android/launcher3/home/HomeContainer;->launchSfinder(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    sub-int v1, p5, p3

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const-string v0, "HomeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height is change !! mUpwardFadeOutStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOverlayStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutStart:I

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method resetStartedSFinder()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    return-void
.end method

.method resetTouchState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    return-void
.end method

.method public setAlpha(F)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const-string v1, "HomeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlpha : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/launcher3/common/tray/TrayManager;->onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    :goto_0
    neg-int v3, v0

    move v2, v0

    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_4

    int-to-float v4, v3

    cmpg-float v4, p1, v4

    if-lez v4, :cond_1

    int-to-float v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeContainer;->updateScaleAndAlphaByTranslationY(F)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v1, "HomeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
