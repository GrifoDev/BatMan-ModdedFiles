.class public Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;
.super Ljava/lang/Object;
.source "GuideArrowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator$1;
    }
.end annotation


# static fields
.field private static SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String;

.field private static sIsLoadCompleted:Z

.field private static sIsShowEnabled:Z


# instance fields
.field private mAnimationDistance:F

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsLeftArrow:Z

.field private mRes:Landroid/content/res/Resources;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsLoadCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator$1;-><init>(Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetView must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    invoke-virtual {p0, p4}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->init(I)V

    return-void
.end method

.method public static finishGuideArrow(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-boolean v3, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "clear_cover_servicebox_showing_guide_arrow"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private getFadeInAnimator(FF)Landroid/animation/Animator;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v6, [F

    aput p1, v4, v7

    aput p2, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutAnimator(FF)Landroid/animation/Animator;
    .locals 10

    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v5, [F

    aput p1, v4, v6

    aput p2, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static needToPlayGuideArrow(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsLoadCompleted:Z

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    return v0

    :cond_0
    sput-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsLoadCompleted:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "clear_cover_servicebox_showing_guide_arrow"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    sget-boolean v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x43

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public init(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_arrow_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_arrow_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    neg-float v0, v3

    :goto_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    sub-float/2addr v3, v4

    sub-float v1, v3, v2

    goto :goto_0

    :cond_2
    int-to-float v3, p1

    iget v4, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    add-float/2addr v3, v4

    sub-float v0, v3, v2

    goto :goto_1
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
