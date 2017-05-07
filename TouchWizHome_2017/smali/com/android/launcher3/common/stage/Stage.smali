.class public abstract Lcom/android/launcher3/common/stage/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# static fields
.field public static final BUILD_AND_SET_LAYER:I = 0x1

.field public static final BUILD_LAYER:I = 0x0

.field public static final STAGE_MODE_APPS:I = 0x2

.field public static final STAGE_MODE_APPSPICKER:I = 0x6

.field public static final STAGE_MODE_FOLDER:I = 0x5

.field public static final STAGE_MODE_HOME:I = 0x1

.field public static final STAGE_MODE_NONE:I = 0x0

.field public static final STAGE_MODE_WIDGETFOLDER:I = 0x4

.field public static final STAGE_MODE_WIDGETS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "Stage"


# instance fields
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

.method static synthetic access$000(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cleanupSwitchAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/Stage;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
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

    new-instance v1, Lcom/android/launcher3/common/stage/Stage$1;

    invoke-direct {v1, p0, v5, p2}, Lcom/android/launcher3/common/stage/Stage$1;-><init>(Lcom/android/launcher3/common/stage/Stage;ZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lcom/android/launcher3/common/stage/Stage$2;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/stage/Stage$2;-><init>(Lcom/android/launcher3/common/stage/Stage;JLandroid/animation/AnimatorSet;ZLcom/android/launcher3/common/stage/StageEntry;)V

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

.method public finishOnTouchOutSide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getContainerView()Landroid/view/View;
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
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChangedIfNeeded()V

    :cond_1
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
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

.method protected abstract onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public onStartForResult(I)V
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

.method public supportStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final switchState(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cancelStateSwitchAnimation()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/common/stage/Stage;->playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method
