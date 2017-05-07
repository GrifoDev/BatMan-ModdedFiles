.class public Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IDEAL_FRAME_DURATION:I = 0x10

.field private static final MAX_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FirstFrameAnimatorHelper"

.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    iput-object p2, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    iput-object p2, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static declared-synchronized initializeDrawListener(Landroid/view/View;)V
    .locals 3

    const-class v1, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sVisible:Z

    return v0
.end method

.method public static setIsVisible(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sVisible:Z

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    sget-wide v8, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v8, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartFrame:J

    iput-wide v2, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    iget-boolean v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-gez v7, :cond_2

    if-nez v6, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    sget-wide v8, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v10, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    iget-wide v8, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    iget-wide v8, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v7, :cond_5

    iget-wide v8, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, 0x10

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-lez v7, :cond_5

    const-wide/16 v8, 0x10

    cmp-long v7, v0, v8

    if-lez v7, :cond_5

    const-wide/16 v8, 0x10

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_1

    :cond_5
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v8, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper$2;

    invoke-direct {v8, p0, p1}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper$2;-><init>(Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public print(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    const-string v1, "FirstFrameAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dirty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
