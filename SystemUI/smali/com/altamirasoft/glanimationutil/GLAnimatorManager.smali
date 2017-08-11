.class public Lcom/altamirasoft/glanimationutil/GLAnimatorManager;
.super Ljava/lang/Object;
.source "GLAnimatorManager.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;
.implements Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;


# static fields
.field static instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;


# instance fields
.field anim:Landroid/animation/ValueAnimator;

.field calculateAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLCalculateHelper;",
            ">;"
        }
    .end annotation
.end field

.field easingAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLEasingHelper;",
            ">;"
        }
    .end annotation
.end field

.field isPendingStopEasing:Z

.field needKeepUpdate:Z

.field surfaceView:Landroid/opengl/GLSurfaceView;

.field valueAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->visible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->isPendingStopEasing:Z

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    return-void
.end method

.method public static getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;
    .locals 2

    sget-object v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    return-object v0

    :cond_0
    new-instance v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-direct {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;-><init>()V

    sput-object v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    sget-object v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    sget-object v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    sget-object v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->instance:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public addCalculateFrameListener(Lcom/altamirasoft/glanimationutil/GLCalculateHelper;)V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addEasingFrameListener(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCalculateHelper()Lcom/altamirasoft/glanimationutil/GLCalculateHelper;
    .locals 2

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    new-instance v0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-direct {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;-><init>()V

    invoke-virtual {p0, v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->addCalculateFrameListener(Lcom/altamirasoft/glanimationutil/GLCalculateHelper;)V

    invoke-virtual {v0, p0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->addListener(Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;)Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public createEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 2

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    new-instance v0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-direct {v0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;-><init>()V

    invoke-virtual {p0, v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->addEasingFrameListener(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V

    invoke-virtual {v0, p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->addListener(Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;
    .locals 1

    invoke-static {p1, p2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->ofFloat(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->addValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    invoke-virtual {v0, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    return-object v0
.end method

.method public doFrame()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->surfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_3

    :goto_3
    return-void

    :cond_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_3
.end method

.method public onAnimationEnd(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->removeValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    return-void
.end method

.method public onAnimationStart(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V

    return-void
.end method

.method public onCalculateEnd(Lcom/altamirasoft/glanimationutil/GLCalculateHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    return-void
.end method

.method public onCalculateStart(Lcom/altamirasoft/glanimationutil/GLCalculateHelper;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    return-void
.end method

.method public onEasingEnd(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V
    .locals 1

    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->isPendingStopEasing:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    goto :goto_0
.end method

.method public onEasingStart(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V
    .locals 0

    return-void
.end method

.method public pauseAnim()V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0
.end method

.method public removeValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->visible:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0
.end method

.method public startAnim()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    :cond_0
    new-array v0, v4, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;

    invoke-direct {v1, p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;-><init>(Lcom/altamirasoft/glanimationutil/GLAnimatorManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$2;

    invoke-direct {v1, p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$2;-><init>(Lcom/altamirasoft/glanimationutil/GLAnimatorManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_1
.end method

.method public stopIfNoNeedUpdate()V
    .locals 3

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    :goto_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-boolean v2, v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method
