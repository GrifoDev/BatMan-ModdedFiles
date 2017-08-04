.class Lcom/android/launcher3/home/HomeTransitionAnimation;
.super Ljava/lang/Object;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;
    }
.end annotation


# instance fields
.field private mDragDrakenAlpha:F

.field private mFolderBgGrowFactor:F

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeRootView:Landroid/view/View;

.field private mIsRunningOverviewAnimation:Z

.field private mIsRunningSwipeAnimation:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOverviewDrakenAlpha:F

.field private mOverviewShrinkFactor:F

.field private mScreenGridShrinkFactor:F

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;

.field private final mSwipeInterpolator:Landroid/view/animation/Interpolator;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSwipeInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mDragDrakenAlpha:F

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewDrakenAlpha:F

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupShrinkFactor()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningSwipeAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method private animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V
    .locals 7

    const/4 v5, 0x2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    iget v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewDrakenAlpha:F

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    const-string v4, "backgroundAlpha"

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-ne p3, v5, :cond_0

    iget v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mDragDrakenAlpha:F

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/OverviewPanel;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/launcher3/home/Hotseat;->setAlpha(F)V

    invoke-static {v1, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance v3, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v3, v4, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v3, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V
    .locals 11

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSwipeAnimationDuration(Z)I

    move-result v0

    int-to-long v4, v0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSwipeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;

    move-object v1, p0

    move/from16 v2, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation$7;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZFJZ)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :cond_0
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v9

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sub-int v0, v9, v7

    int-to-float v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v9

    goto :goto_2

    :cond_2
    neg-int v0, v9

    add-int/2addr v0, v7

    int-to-float v3, v0

    goto :goto_0

    :cond_3
    move-wide v4, p3

    goto :goto_1
.end method

.method private cancelStageAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz p2, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    :goto_2
    if-eq v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0xc9

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V
    .locals 15

    if-eqz p4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    const-wide/16 v12, -0x191

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x12d

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x1f5

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    if-eqz p4, :cond_6

    const/4 v12, 0x4

    if-ne v8, v7, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    if-eq v8, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    :cond_3
    :goto_4
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_0

    :cond_4
    const-string v9, "backgroundAlpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move/from16 v0, p5

    int-to-long v12, v0

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$8;

    move/from16 v0, p4

    invoke-direct {v9, p0, v0, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation$8;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    if-eq v8, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_4

    :cond_7
    if-eqz p4, :cond_9

    const/4 v12, 0x4

    if-ne v8, v7, :cond_8

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    :goto_6
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_6

    :cond_a
    return-void
.end method

.method private changeScreenGridBackground(Lcom/android/launcher3/home/Workspace;ZZIZ)V
    .locals 15

    if-eqz p3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    const-wide/16 v12, -0x191

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x12d

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x1f5

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz p2, :cond_a

    if-eqz p3, :cond_7

    const/4 v12, 0x5

    if-ne v8, v7, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_4

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    :cond_4
    :goto_4
    if-eq v8, v6, :cond_5

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_5

    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_0

    :cond_5
    const-string v9, "backgroundAlpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move/from16 v0, p4

    int-to-long v12, v0

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$9;

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {v9, p0, v0, v1, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation$9;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZZLcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_4

    if-eqz p5, :cond_8

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    :goto_5
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_4

    :cond_8
    const/4 v12, 0x4

    if-ne v8, v7, :cond_9

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    :cond_a
    if-eqz p3, :cond_c

    const/4 v12, 0x5

    if-ne v8, v7, :cond_b

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    :goto_8
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    if-eqz p5, :cond_d

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_8

    :cond_d
    const/4 v12, 0x4

    if-ne v8, v7, :cond_e

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    return-void
.end method

.method private getStageAnimationDuration(II)I
    .locals 6

    const v5, 0x7f0b001e

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    if-ne p2, v3, :cond_3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    if-ne p2, v2, :cond_3

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateAnimationDuration(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSwipeAnimationDuration(Z)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v3

    div-int/lit8 v5, v4, 0x2

    if-ge v3, v5, :cond_0

    mul-int/lit8 v3, v3, 0x2

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    if-eqz p1, :cond_2

    invoke-direct {p0, v7, v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    int-to-float v5, v1

    int-to-float v6, v3

    div-float v6, v2, v6

    mul-float/2addr v5, v6

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v0, v5

    :goto_1
    return v0

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v3

    div-float v7, v2, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v0, v5

    goto :goto_1
.end method

.method private setNormalStateView(Z)V
    .locals 10

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v8

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v9

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v5

    invoke-virtual {v8, v1}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    invoke-static {v8, v6}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v7, v6}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    if-eqz v9, :cond_0

    invoke-virtual {v9, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8, v4}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    return-void
.end method


# virtual methods
.method getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v15

    if-eqz p4, :cond_3

    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v5}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v11

    invoke-virtual {v15}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v16, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v11

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v12, :cond_0

    new-instance v5, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v5, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v14

    int-to-long v6, v11

    invoke-virtual {v14, v6, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/home/HomeTransitionAnimation$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation$4;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v6, v11}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    :goto_1
    return-object v5

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    if-eqz v12, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    if-eqz p5, :cond_5

    if-nez p3, :cond_4

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v1}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [F

    aput v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v1, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getEnterFromAppsPickerAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setNormalStateView(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f050006

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v5}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v3, v6, [I

    if-eqz p3, :cond_1

    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/home/HomeTransitionAnimation$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$1;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getEnterFromWidgetsAnimation(ZLjava/util/HashMap;Z)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setNormalStateView(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f050007

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v6}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v1}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [F

    aput v6, v4, v3

    invoke-static {v1, v2, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v1, 0x2

    invoke-direct {p0, v5, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v3, v6, [I

    if-eqz p3, :cond_0

    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    div-int/lit8 v6, v2, 0x2

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/home/HomeTransitionAnimation$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$2;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method getExitToWidgetsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/high16 v5, 0x40000000    # 2.0f

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f05000c

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v17

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v10

    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    move/from16 v25, v0

    :goto_0
    if-eqz p4, :cond_4

    const v2, 0x7f090026

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v26, v0

    :goto_1
    if-eqz p4, :cond_5

    const/4 v13, 0x0

    :goto_2
    if-eqz p4, :cond_6

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v18

    const v2, 0x7f090029

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    if-eqz p4, :cond_7

    sub-int v2, v18, v19

    int-to-float v0, v2

    move/from16 v20, v0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v24, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    int-to-long v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v17, :cond_0

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v21

    int-to-long v2, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v12

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v11, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v12, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v15

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v14, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_8

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_5
    int-to-long v2, v10

    invoke-virtual {v15, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    int-to-long v2, v10

    invoke-virtual {v12, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/home/HomeTransitionAnimation$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v14}, Lcom/android/launcher3/home/HomeTransitionAnimation$3;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    move/from16 v5, p1

    move/from16 v6, p4

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v9}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_b

    const/4 v2, 0x4

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_3
    const/high16 v25, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_5

    :cond_9
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    invoke-static {v14, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v11, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    :cond_a
    if-eqz v9, :cond_1

    invoke-virtual {v14}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_6

    :cond_b
    const/4 v2, 0x1

    goto :goto_7
.end method

.method getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v29

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v21

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v7

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v12

    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mScreenGridShrinkFactor:F

    move/from16 v34, v0

    :goto_0
    const v2, 0x7f090026

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v35, v0

    const v2, 0x7f090027

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v36, v0

    if-eqz p5, :cond_6

    const/16 v37, 0x0

    :goto_1
    if-eqz p5, :cond_8

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p4, :cond_9

    const/16 v19, 0x0

    :goto_3
    if-eqz p4, :cond_b

    const/high16 v28, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v14

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v20

    invoke-virtual {v9, v14}, Lcom/android/launcher3/home/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_c

    sub-int v2, v20, v14

    :goto_5
    mul-int v33, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v22

    const v2, 0x7f090029

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const v2, 0x7f09002a

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    if-eqz p5, :cond_d

    const/16 v25, 0x0

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    if-eqz p5, :cond_0

    if-eqz v33, :cond_0

    invoke-virtual {v9, v14}, Lcom/android/launcher3/home/Workspace;->getScrollForPage(I)I

    move-result v2

    add-int v2, v2, v33

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/home/Workspace;->scrollTo(II)V

    :cond_0
    if-eqz p1, :cond_10

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v32, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v32

    invoke-direct {v0, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    int-to-long v2, v12

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v21, :cond_1

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v26

    int-to-long v2, v12

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v16

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v15, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v5, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v30

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    move-object/from16 v0, v29

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v31

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v7, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_f

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_7
    int-to-long v2, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    int-to-long v2, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    int-to-long v2, v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    int-to-long v2, v12

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation$6;

    move-object/from16 v3, p0

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation$6;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;ZLandroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_8
    move-object/from16 v8, p0

    move/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/home/Workspace;ZZIZ)V

    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz p5, :cond_12

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v12}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_4
    if-eqz p5, :cond_5

    const/high16 v34, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    move/from16 v34, v0

    goto/16 :goto_0

    :cond_6
    if-eqz p4, :cond_7

    move/from16 v37, v36

    goto/16 :goto_1

    :cond_7
    move/from16 v37, v35

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_9
    if-eqz p5, :cond_a

    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_a
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_4

    :cond_c
    move v2, v14

    goto/16 :goto_5

    :cond_d
    if-eqz p4, :cond_e

    :goto_a
    sub-int v2, v22, v24

    int-to-float v0, v2

    move/from16 v25, v0

    goto/16 :goto_6

    :cond_e
    move/from16 v24, v23

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_7

    :cond_10
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    invoke-static {v5, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ScreenGridPanel;->setAlpha(F)V

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v7, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v15, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    :cond_11
    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x40

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_8

    :cond_12
    const/4 v2, 0x4

    goto/16 :goto_9
.end method

.method getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v8}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v4

    const/4 v8, 0x6

    invoke-direct {p0, v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v3

    if-eqz p3, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p3, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    invoke-static {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    invoke-static {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    invoke-static {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$5;

    invoke-direct {v9, p0, p3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation$5;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v8, p1, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v8

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const v5, 0x3f733333    # 0.95f

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    invoke-virtual {v4, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    if-eqz p3, :cond_4

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/16 v8, 0x8

    goto :goto_3
.end method

.method getTrayReturnAnimation(ZZ)Landroid/animation/Animator;
    .locals 7

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method isRunningOverviewAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z

    return v0
.end method

.method isRunningSwipeAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningSwipeAnimation:Z

    return v0
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupShrinkFactor()V

    return-void
.end method

.method setupShrinkFactor()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mScreenGridShrinkFactor:F

    return-void
.end method

.method setupView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f00a8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    return-void
.end method
