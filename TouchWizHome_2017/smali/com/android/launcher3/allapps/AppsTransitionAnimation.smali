.class public Lcom/android/launcher3/allapps/AppsTransitionAnimation;
.super Ljava/lang/Object;
.source "AppsTransitionAnimation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsTransitionAnimation"


# instance fields
.field private final mAppsContentView:Landroid/view/ViewGroup;

.field private final mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private final mAppsPageIndicatorView:Landroid/view/View;

.field private final mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mDragDrakenAlpha:F

.field private mFolderBgGrowFactor:F

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPageIndicatorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mDragDrakenAlpha:F

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v3

    const/4 v2, 0x0

    if-ne p3, v7, :cond_0

    iget v2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mDragDrakenAlpha:F

    :cond_0
    sub-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const-string v4, "backgroundAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cancelStageAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private changeCellLayoutBackground(IZ)V
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    if-eqz p2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    if-eqz p2, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    :goto_2
    if-ne v5, v4, :cond_2

    invoke-virtual {v3, v6}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x0

    if-eqz p3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_7

    invoke-virtual {p1, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {v3, v10}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    if-eq v5, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    :cond_0
    :goto_2
    if-eq v5, v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_2

    :cond_1
    const-string v6, "backgroundAlpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getBackgroundAlpha()F

    move-result v8

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v0, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v6, p4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$13;

    invoke-direct {v6, p0, p3, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$13;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/allapps/view/AppsViewCellLayout;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eq v5, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, v9}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {v3, v10}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v9}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method private getStageAnimationDuration(II)I
    .locals 6

    const v5, 0x7f0a001a

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_0

    const v1, 0x7f0a0021

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

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateAnimationDuration(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string v11, "AppsTransitionAnimation"

    const-string v12, "mStateAnimator is null. It must be created before using ViewAnimator"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v11

    move/from16 v0, p2

    int-to-long v12, v0

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v11, Lcom/android/launcher3/allapps/AppsTransitionAnimation$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$8;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v5, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v5, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v11

    move/from16 v0, p2

    int-to-long v12, v0

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareViewsForReposition()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v11

    if-ge v7, v11, :cond_3

    invoke-virtual {v3, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f666666    # 0.9f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f666666    # 0.9f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    const v12, 0x3f666666    # 0.9f

    invoke-virtual {v6, v12}, Landroid/view/View;->setScaleX(F)V

    const v12, 0x3f666666    # 0.9f

    invoke-virtual {v6, v12}, Landroid/view/View;->setScaleY(F)V

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v6, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v6, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v12, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0
.end method


# virtual methods
.method public getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareViewsForReposition()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_7

    if-eq v11, v9, :cond_0

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_0

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v7, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v8, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v8, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    if-nez v4, :cond_2

    new-instance v18, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual/range {v21 .. v21}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual/range {v21 .. v21}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_1
    new-instance v18, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v4, 0x1

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    invoke-virtual {v6, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v15

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f666666    # 0.9f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f666666    # 0.9f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    return-object v18
.end method

.method public getChangeViewTypeAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getRepositionEnterAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 10
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

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v7, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v7}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v3

    :goto_1
    if-eqz p4, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    :goto_2
    invoke-direct {p0, v8, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v7, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    new-instance v7, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v7, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_3

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;

    invoke-direct {v8, p0, v5, p3, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;ZF)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v7, p1, v6, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    :goto_4
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v5, v3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_5

    const/16 v6, 0x8

    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public getEnterFromFolderAnimation(ZLcom/android/launcher3/common/stage/StageEntry;Ljava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/launcher3/common/stage/StageEntry;",
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

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v3, v6, [I

    if-eqz p4, :cond_1

    invoke-virtual {p4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

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

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
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

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    invoke-direct {p0, v5, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
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

    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$11;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$11;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    goto :goto_0
.end method

.method public getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
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

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v3, v6, [I

    if-eqz p3, :cond_0

    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

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

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$2;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
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

    const/4 v7, 0x0

    const/4 v5, 0x1

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getExitToWidgetAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
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

    const/4 v5, 0x1

    const/4 v7, 0x0

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getRepositionEnterAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p2, v0, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            "Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v12

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v10

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v19

    if-eqz p4, :cond_4

    const v15, 0x3f2b851f    # 0.67f

    :goto_1
    const v4, 0x7f0800a5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    if-eqz p4, :cond_5

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    :goto_2
    if-eqz p4, :cond_6

    const/4 v7, 0x0

    :goto_3
    if-eqz p4, :cond_7

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v18

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v20

    if-nez v20, :cond_8

    const/4 v14, 0x0

    :goto_5
    const v4, 0x7f0800a4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    if-eqz p4, :cond_a

    move/from16 v0, v22

    neg-int v4, v0

    int-to-float v0, v4

    move/from16 v23, v0

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz v14, :cond_0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getScrollForPage(I)I

    move-result v4

    add-int/2addr v4, v14

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollTo(II)V

    :cond_0
    if-eqz p1, :cond_c

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v13, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-virtual {v13, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-virtual {v13, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v21, :cond_1

    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v27

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v6, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v8}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v26

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v8, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v10}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v28

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v10, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_b

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_7
    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v29, v0

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;FLcom/android/launcher3/allapps/AppsScreenGridPanel;FLandroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v19

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_8
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLayoutTransitionOffsetForPage(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_9

    sub-int v4, v20, v18

    :goto_9
    mul-int v14, v5, v4

    goto/16 :goto_5

    :cond_9
    move/from16 v4, v18

    goto :goto_9

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v6, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setAlpha(F)V

    invoke-static {v8, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v10, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setTranslationY(F)V

    invoke-virtual {v12, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleX(F)V

    invoke-virtual {v12, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleY(F)V

    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto/16 :goto_8
.end method

.method public getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 2
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

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setPagedViewVisibility(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setPagedViewVisibility(Z)Z

    goto :goto_0
.end method

.method public getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 17
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

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    if-eqz p3, :cond_0

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v4

    :goto_0
    if-eqz p3, :cond_1

    move v13, v4

    :goto_1
    if-eqz p3, :cond_2

    const/4 v11, 0x0

    :goto_2
    if-eqz p3, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    if-eqz p3, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    sget-object v14, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v14}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v2

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v12

    :goto_5
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v14, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v14, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v10

    new-instance v14, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v14, v12, v2}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v10, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v14, v4

    invoke-virtual {v10, v14, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v6, v15, v16

    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v14, v4

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v14, v4

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v14, v13

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v14, v4

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v14, v13

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v15, v0, v1, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v14

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_4
    const v7, 0x3f733333    # 0.95f

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v12

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v12, v11}, Landroid/view/View;->setAlpha(F)V

    if-nez p3, :cond_7

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    if-eqz p3, :cond_8

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v5, v14}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_6

    :cond_7
    const/16 v14, 0x8

    goto :goto_7

    :cond_8
    const/16 v14, 0x8

    goto :goto_8
.end method

.method public getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v0

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v3

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getTidyUpContainerView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v7, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v1, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;

    invoke-direct {v6, p0, p3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLandroid/view/View;)V

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, p2, v0, p4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;)V

    if-nez p3, :cond_0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;F)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_4

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v5, p4}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_2
.end method
