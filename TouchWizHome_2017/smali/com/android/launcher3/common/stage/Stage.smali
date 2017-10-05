.class public abstract Lcom/android/launcher3/common/stage/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# static fields
.field private static final BACKGROUND_ANIMATION_MIN_DURATION:I = 0x46

.field public static final BUILD_AND_SET_LAYER:I = 0x1

.field public static final BUILD_LAYER:I = 0x0

.field public static final STAGE_MODE_APPS:I = 0x2

.field public static final STAGE_MODE_APPSPICKER:I = 0x6

.field public static final STAGE_MODE_FOLDER:I = 0x5

.field public static final STAGE_MODE_HOME:I = 0x1

.field public static final STAGE_MODE_NONE:I = 0x0

.field public static final STAGE_MODE_WIDGETFOLDER:I = 0x4

.field public static final STAGE_MODE_WIDGETS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Stage"


# instance fields
.field private mBackgroundDimAnim:Landroid/animation/Animator;

.field private mBackgroundDimFinalAlpha:F

.field private mCurrentHeightDp:I

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field private mMode:I

.field private mStateSwitchAnim:Landroid/animation/AnimatorSet;

.field protected mViewInitiated:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/stage/Stage;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimFinalAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cleanupSwitchAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/stage/Stage;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method private cancelStateSwitchAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private cleanupSwitchAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-string v8, "Stage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playStateTransitAnim : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v8

    if-ne v8, v1, :cond_0

    move v5, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v4, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    new-instance v1, Lcom/android/launcher3/common/stage/Stage$2;

    invoke-direct {v1, p0, v5, p2}, Lcom/android/launcher3/common/stage/Stage$2;-><init>(Lcom/android/launcher3/common/stage/Stage;ZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lcom/android/launcher3/common/stage/Stage$3;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/stage/Stage$3;-><init>(Lcom/android/launcher3/common/stage/Stage;JLandroid/animation/AnimatorSet;ZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : there is no containerview"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    goto :goto_1
.end method

.method private transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishOnTouchOutSide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getBackgroundBlurAmountForState(I)F
.end method

.method protected abstract getBackgroundDimAlphaForState(I)F
.end method

.method protected abstract getBackgroundImageAlphaForState(I)F
.end method

.method public abstract getContainerView()Landroid/view/View;
.end method

.method protected abstract getInternalState()I
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    return v0
.end method

.method protected getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSupportSoftInputParam(Landroid/view/Window;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v1, v0, 0x10

    return v1
.end method

.method protected initStageView()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initStageView was called duplicately"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    return-void
.end method

.method public initialize(Lcom/android/launcher3/Launcher;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isRunningStateChangeAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isViewInitiated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    return v0
.end method

.method protected keepInstance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChangeColorForBg(Z)V
    .locals 0

    return-void
.end method

.method public onChangeGrid()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChangedIfNeeded(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 0

    return-void
.end method

.method public onDestroyActivity()V
    .locals 0

    return-void
.end method

.method public onPauseActivity()V
    .locals 0

    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResumeActivity()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected abstract onStageEnterByTray()Landroid/animation/Animator;
.end method

.method protected abstract onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected abstract onStageExitByTray()Landroid/animation/Animator;
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public onStartActivity()V
    .locals 0

    return-void
.end method

.method public onStartForResult(I)V
    .locals 0

    return-void
.end method

.method public onStopActivity()V
    .locals 0

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method protected abstract supportNavigationBarForState(I)Z
.end method

.method public supportStatusBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getInternalState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBarForState(I)Z

    move-result v0

    return v0
.end method

.method protected abstract supportStatusBarForState(I)Z
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final switchState(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cancelStateSwitchAnimation()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->getAnimationDuration(Landroid/animation/Animator;)J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/animation/AnimatorSet;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v4

    invoke-virtual {p0, v4, v2, v0, v1}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/common/stage/Stage;->playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method protected updateSoftInputParam(Landroid/view/Window;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v0, p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method protected updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBarForState(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->supportNavigationBarForState(I)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->getBackgroundBlurAmountForState(I)F

    move-result v0

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_6

    :goto_3
    invoke-static {v3, v5, v0, p3, p4}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/stage/Stage;->getSupportSoftInputParam(Landroid/view/Window;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher3/common/stage/Stage;->updateSoftInputParam(Landroid/view/Window;I)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->getBackgroundDimAlphaForState(I)F

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimFinalAlpha:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_7

    :cond_2
    :goto_4
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    :cond_8
    cmpl-float v6, v4, v2

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    iput v2, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimFinalAlpha:F

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_9

    const-wide/16 p3, 0x46

    :cond_9
    const-string v6, "backgroundAlpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v1, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {v6, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    new-instance v7, Lcom/android/launcher3/common/stage/Stage$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/common/stage/Stage$1;-><init>(Lcom/android/launcher3/common/stage/Stage;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_4
.end method
