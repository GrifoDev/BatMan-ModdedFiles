.class public Lcom/android/launcher3/common/stage/StageManager;
.super Ljava/lang/Object;
.source "StageManager.java"


# static fields
.field private static final RUNTIME_STAGE_STACK:Ljava/lang/String; = "RUNTIME_STAGE_STACK"

.field private static final RUNTIME_STAGE_STAGES:Ljava/lang/String; = "RUNTIME_STAGE_STAGES"

.field private static final TAG:Ljava/lang/String; = "StageManager"


# instance fields
.field private final mActivity:Lcom/android/launcher3/Launcher;

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mDumpStack:Z

.field private mInProgressTransit:Z

.field private final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/stage/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/common/stage/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, p2}, Lcom/android/launcher3/common/stage/StageManager;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/stage/StageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cleanupAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/stage/StageManager;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/stage/StageManager;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method private assertTransitInProgress()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    return-void
.end method

.method private cancelAnimation()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "StageManager"

    const-string v2, "mCurrentAnimation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cleanupAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private dumpStack()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dump stage\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "StageManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 6

    iget-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    const-string v1, "StageManager"

    const-string v2, "dump stageview info : mode(%d), visible(%d) , alpha(%f)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump stageview info fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStage(IZ)Lcom/android/launcher3/common/stage/Stage;
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/common/stage/StageFactory;->buildStage(I)Lcom/android/launcher3/common/stage/Stage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/common/stage/Stage;->initialize(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->setup()V

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->keepInstance()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail to create instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->restoreStack(Landroid/os/Bundle;Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    return-void
.end method

.method private playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 15

    const-string v3, "StageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start stageTransitionAnim : from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_6

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v11, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    if-eqz p4, :cond_4

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    new-instance v2, Lcom/android/launcher3/common/stage/StageManager$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/stage/StageManager$2;-><init>(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;Lcom/android/launcher3/common/stage/Stage;)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Lcom/android/launcher3/common/stage/StageManager$3;

    move-object v3, p0

    move-object v6, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/common/stage/StageManager$3;-><init>(Lcom/android/launcher3/common/stage/StageManager;JLandroid/animation/AnimatorSet;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/Utilities;->getAnimationDuration(Landroid/animation/Animator;)J

    move-result-wide v12

    const-wide/16 v6, 0x0

    cmp-long v3, v12, v6

    if-gez v3, :cond_2

    invoke-static/range {p4 .. p4}, Lcom/android/launcher3/Utilities;->getAnimationDuration(Landroid/animation/Animator;)J

    move-result-wide v12

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12, v13}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v14

    :goto_2
    invoke-virtual {v14, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v14

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v8, v9}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/stage/StageManager;->dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V

    goto :goto_3
.end method

.method private restoreStack(Landroid/os/Bundle;Z)V
    .locals 5

    const-string v2, "RUNTIME_STAGE_STACK"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private restoreStagesOutOfStack(Landroid/os/Bundle;)V
    .locals 6

    const-string v3, "RUNTIME_STAGE_STAGES"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/launcher3/common/stage/Stage;->restoreState(Landroid/os/Bundle;Z)V

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/Stage;->setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gt v0, v6, :cond_0

    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid finishAllStage : stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishAllStage : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " <--- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0
.end method

.method public finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid finishStage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid finishStage : stack="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/stage/Stage;

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    :goto_1
    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const-string v0, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishStage : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " <- "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    invoke-virtual {v6, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishStage : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStack.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getStage(I)Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getTopStage()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    goto :goto_0
.end method

.method public isRunningAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToOverHome(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eq v0, p1, :cond_2

    const-string v0, "StageManager"

    const-string v1, "can not move to over Home"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    :cond_3
    iput-boolean v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual {p2, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/Stage;->onChangeColorForBg(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onChangeColorForBg(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onChangeGrid()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onChangeGrid()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onChangeGrid()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/stage/Stage;->onCheckedChanged(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onDestroyActivity()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onDestroyActivity()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onPauseActivity()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onPauseActivity()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/Stage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onResumeActivity()V

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getInternalState()I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onResumeActivity()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v4, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "does not restore remain-stages in stack : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v4, "RUNTIME_STAGE_STACK"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const-string v4, "RUNTIME_STAGE_STAGES"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved stages : inStack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , outStack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onStartActivity()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onStartActivity()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStartForResult(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartForResult : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStartForResult(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onStopActivity()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onStopActivity()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/common/stage/StageManager;->restoreStack(Landroid/os/Bundle;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    iget-boolean v3, v1, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/common/stage/Stage;->restoreState(Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->restoreStagesOutOfStack(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v5, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public setupStartupViews()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    :cond_0
    return-void
.end method

.method public startStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startStage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is already on top"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    iput p1, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startStage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    goto :goto_1
.end method

.method public startStageByTray(I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    if-ne v6, p1, :cond_0

    const-string v6, "StageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startStageByTray : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already on top"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/stage/Stage;

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->onStageExitByTray()Landroid/animation/Animator;

    move-result-object v2

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/Stage;->onStageEnterByTray()Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/common/stage/StageManager$1;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher3/common/stage/StageManager$1;-><init>(Lcom/android/launcher3/common/stage/StageManager;I)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    goto :goto_0
.end method

.method public switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/stage/Stage;->switchState(Lcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_0

    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid switchStage : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    iput p1, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchStage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto :goto_0
.end method
