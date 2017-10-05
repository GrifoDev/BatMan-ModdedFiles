.class public Lcom/android/launcher3/folder/FolderTransitionAnimation;
.super Ljava/lang/Object;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;,
        Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;,
        Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddItemsStartDelay:I

.field private mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

.field private mFolderCloseDuration:I

.field private mFolderExpandDuration:I

.field private mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut50:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;

.field private mStateTransitionDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$1;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAddItemsStartDelay:I

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderCloseDuration:I

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateTransitionDuration:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/folder/FolderTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private animateAddItemStart(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/folder/view/FolderView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, v2}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f060010

    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget v6, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAddItemsStartDelay:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;

    invoke-direct {v6, p0, v1, v3, v4}, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Landroid/view/View;FF)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/android/launcher3/folder/FolderTransitionAnimation$5;

    invoke-direct {v5, p0, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$5;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 9

    const v8, 0x3f333333    # 0.7f

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p3

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    invoke-direct {v2, p2, v6}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateCloseToPosition(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;J)V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    invoke-direct {v2, p2, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f060005

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private animateFadeOut(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f06000b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [F

    aput v5, v3, v7

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {p2, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {p2, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    invoke-direct {v2, p2, v6}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private cancelStageAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private changeDragBackground(Lcom/android/launcher3/folder/view/FolderView;Z)V
    .locals 11

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v6

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getContentBorderWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getContentBorderHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/view/FolderCellLayout;

    if-eqz p2, :cond_1

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v4, v3, v8}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBgImage(IIIZ)V

    :goto_2
    if-ne v7, v5, :cond_2

    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackgroundAlpha(F)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPartialBackgroundAlpha(F)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move v0, v9

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    invoke-virtual {v2, v10, v4, v3, v8}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBgImage(IIIZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackgroundAlpha(F)V

    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPartialBackgroundAlpha(F)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v3

    const/4 v8, 0x2

    new-array v2, v8, [I

    const/4 v8, 0x2

    new-array v1, v8, [I

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v8, v2, v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    aget v8, v2, v8

    if-lez v8, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    const/4 v8, 0x0

    aget v9, v1, v8

    iget v10, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    add-int/2addr v9, v10

    aput v9, v1, v8

    const/4 v8, 0x1

    aget v9, v1, v8

    iget v10, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    add-int/2addr v9, v10

    aput v9, v1, v8

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v1, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v7, v8

    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    const/4 v9, 0x0

    aput v6, v8, v9

    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    const/4 v9, 0x1

    aput v7, v8, v9

    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    const/4 v9, 0x0

    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    const/4 v9, 0x1

    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->isValidView:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->isValidView:Z

    goto :goto_0
.end method

.method private prepareOpenAnimation(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;
    .locals 8

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getBorder()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStateAnimation()V

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_6

    move v3, v6

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [F

    if-eqz p3, :cond_7

    :goto_2
    aput v4, v6, v7

    invoke-static {v1, v3, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateTransitionDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateTransitionDuration:I

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderNameFocus(J)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;

    invoke-direct {v4, p0, p3, v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    :goto_3
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/folder/view/FolderView;Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    move v3, v7

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    if-eqz p3, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_b

    move v3, v6

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz v1, :cond_3

    if-eqz p3, :cond_c

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_d

    :goto_7
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_a
    move v3, v5

    goto :goto_4

    :cond_b
    move v3, v7

    goto :goto_5

    :cond_c
    move v4, v5

    goto :goto_6

    :cond_d
    move v6, v7

    goto :goto_7
.end method

.method public getEnterFromFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/view/FolderView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateAddItemStart(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderNameFocus(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getEnterFromHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->prepareOpenAnimation(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    int-to-long v4, v3

    invoke-direct {p0, v2, p1, v4, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Z)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    :goto_0
    iget v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderNameFocus(J)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getEnterFromWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getExitToFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeOut(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getExitToHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderCloseDuration:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateCloseToPosition(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;J)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderCloseDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getExitToWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeOut(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method
