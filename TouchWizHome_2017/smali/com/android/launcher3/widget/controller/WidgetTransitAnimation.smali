.class public Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;
.super Ljava/lang/Object;
.source "WidgetTransitAnimation.java"


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private final mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private cleanupAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private getAnimDuration(II)J
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private getEnterWidgetAnimFromFolder(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 11

    const/4 v6, 0x2

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v1, v6, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v4, v1, v7

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v4, v1, v8

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v5, "scaleX"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getEnterWidgetAnimFromHome(Landroid/animation/AnimatorSet;J)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060009

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$3;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private getEnterWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060008

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private getExitWidgetAnimToFolder(Landroid/animation/AnimatorSet;JLandroid/view/View;)V
    .locals 14

    const/4 v12, 0x2

    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v3, v12, [I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v6, v3, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v6, v3, v10

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v5, v12, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v7, "scaleX"

    new-array v8, v10, [F

    aput v11, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v7, "scaleY"

    new-array v8, v10, [F

    aput v11, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v5, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$2;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getExitWidgetAnimToHome(Landroid/animation/AnimatorSet;J)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private getExitWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$6;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public getEnterWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->cleanupAnimation()V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget v4, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    const-string v5, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getAnimDuration(II)J

    move-result-wide v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const-string v5, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v0, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetAnimFromFolder(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    :cond_1
    if-ne v4, v8, :cond_2

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetAnimFromHome(Landroid/animation/AnimatorSet;J)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V

    goto :goto_0
.end method

.method public getExitWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x4

    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->cleanupAnimation()V

    iget v4, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const-string v5, "KEY_WIDGET_FROM_SETTING"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getAnimDuration(II)J

    move-result-wide v2

    if-ne v4, v8, :cond_0

    const-string v5, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimToFolder(Landroid/animation/AnimatorSet;JLandroid/view/View;)V

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    :cond_0
    if-ne v4, v9, :cond_1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimToHome(Landroid/animation/AnimatorSet;J)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V

    goto :goto_0

    :cond_2
    if-ne v4, v8, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
