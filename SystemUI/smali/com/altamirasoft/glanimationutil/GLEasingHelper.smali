.class public Lcom/altamirasoft/glanimationutil/GLEasingHelper;
.super Ljava/lang/Object;
.source "GLEasingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;
    }
.end annotation


# instance fields
.field beforeTime:J

.field currentValue:F

.field easing:F

.field frameRate:F

.field friction:F

.field isPaused:Z

.field isStarted:Z

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;",
            ">;"
        }
    .end annotation
.end field

.field minDiffer:F

.field now:J

.field spring:F

.field targetValue:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->easing:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->friction:F

    iput v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->spring:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->minDiffer:F

    iput-boolean v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isStarted:Z

    iput-boolean v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->frameRate:F

    iput v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    iput v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    return-void
.end method

.method private invalidateData()V
    .locals 9

    const/4 v8, 0x0

    iget-wide v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->beforeTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->now:J

    iget-wide v6, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->beforeTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->frameRate:F

    div-float v2, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    sub-float/2addr v3, v4

    mul-float v0, v3, v2

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_3

    return-void

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->minDiffer:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    iput v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    :cond_4
    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->pause()V

    :goto_1
    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v3, :cond_9

    :cond_5
    return-void

    :cond_6
    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->easing:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    invoke-interface {v3, v4}, Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;->onUpdateCurrentValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iput-boolean v8, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    goto :goto_1

    :cond_9
    iget-boolean v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;

    invoke-interface {v3, p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;->onEasingEnd(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addListener(Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public addUpdateListener(Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public doFrame()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->now:J

    invoke-direct {p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->invalidateData()V

    iget-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->now:J

    iput-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->beforeTime:J

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    return-void
.end method

.method public setCurrentValue(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    return-object p0
.end method

.method public setEasing(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->easing:F

    return-object p0
.end method

.method public setMinDiffer(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->minDiffer:F

    return-object p0
.end method

.method public setTargetValue(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    return-object p0
.end method

.method public setTargetValue(FZ)Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 1

    iput p1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->start()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isStarted:Z

    iput-boolean v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;->onEasingStart(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
