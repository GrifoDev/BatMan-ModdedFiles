.class public Lcom/android/launcher3/home/SwipeAffordance;
.super Landroid/widget/FrameLayout;
.source "SwipeAffordance.java"


# static fields
.field public static final KEY_APPS_VISIT_COUNT:Ljava/lang/String; = "KEY_APPS_VISIT_COUNT_BY_SWIPE"

.field public static final KEY_EXIT_TIME_STAMP:Ljava/lang/String; = "KEY_AFFORDANCE_EXIT_TIME_STAMP"

.field public static final MAX_APPS_VISIT_COUNT:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SwipeAffordance"


# instance fields
.field private final ANIM_START_DELAY:I

.field private final CANCEL_ANIM_DURATION:I

.field private final GAP_OF_ARROW_START_ANIM:I

.field private final SHOW_ANIM_ALPHA:F

.field private final TEXT_HIDE_ANIM_DURATION:I

.field private final TEXT_HIDE_ANIM_START_DELAY:I

.field private final TEXT_SHOW_ANIM_DURATION:I

.field private mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mArrowFrameView:Landroid/view/View;

.field private mArrowView1:Landroid/widget/ImageView;

.field private mArrowView2:Landroid/widget/ImageView;

.field private mCancelAnim:Landroid/animation/AnimatorSet;

.field private mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

.field private mDescriptionString:Ljava/lang/String;

.field private mExitTime:J

.field private mIsStartedAnim:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOneTimeAnim:Landroid/animation/AnimatorSet;

.field private mString:Ljava/lang/String;

.field private mTextReduceSize:F

.field private mTextSize:F

.field private mTextTranslateY:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewMaxWidth:I

.field private mThreeTimesAnim:Landroid/animation/AnimatorSet;

.field private mVisitCountToApps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/SwipeAffordance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/SwipeAffordance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x12c

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->ANIM_START_DELAY:I

    const/16 v1, 0x29b

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_SHOW_ANIM_DURATION:I

    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_HIDE_ANIM_DURATION:I

    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->CANCEL_ANIM_DURATION:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_HIDE_ANIM_START_DELAY:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->GAP_OF_ARROW_START_ANIM:I

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->SHOW_ANIM_ALPHA:F

    iput v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    iput-boolean v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    new-instance v1, Lcom/android/launcher3/home/SwipeAffordance$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/SwipeAffordance$1;-><init>(Lcom/android/launcher3/home/SwipeAffordance;)V

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lcom/android/launcher3/home/SwipeAffordance$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/SwipeAffordance$2;-><init>(Lcom/android/launcher3/home/SwipeAffordance;)V

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextTranslateY:F

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextReduceSize:F

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mDescriptionString:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isATTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0800a9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mString:Ljava/lang/String;

    return-void

    :cond_0
    const v1, 0x7f0800a8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/SwipeAffordance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/SwipeAffordance;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V

    return-void
.end method

.method private endAnimators()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method private getArrowAnimSet()Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050012

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050010

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050011

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowFrameView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const/16 v4, 0x22

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getCancelAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private getHideObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private getShowObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [F

    iget v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextTranslateY:F

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private getTextShowHideAnimSet()Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getShowObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getHideObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x29b

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v3, 0x22

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private isAffordanceTime()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnderVisitCount()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needToCreateAffordance(Lcom/android/launcher3/Launcher;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setAnimatingString()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mDescriptionString:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setSuitableTextSize()V

    goto :goto_1
.end method

.method private setCountForSwipe()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    const-string v0, "SwipeAffordance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create and show swipe affordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setExitTime()V
    .locals 8

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    iget-wide v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const-string v1, "SwipeAffordance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set SwipeAffordance exit time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-wide v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    goto :goto_0
.end method

.method private setSuitableTextSize()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    if-gt v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextReduceSize:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "SwipeAffordance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reduced TextSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method appsVisitCountUp()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isUnderVisitCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    return-void
.end method

.method isStartedAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0f00d7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mDescriptionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowFrameView:Landroid/view/View;

    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->changeColorForBg(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setSuitableTextSize()V

    return-void
.end method

.method setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/view/PageIndicator;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getCancelAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getCancelAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setCountForSwipe()V

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setExitTime()V

    return-void
.end method

.method startAnim()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isUnderVisitCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isAffordanceTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setAnimatingString()V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    iget v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->appsVisitCountUp()V

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method startCancelAnim(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
