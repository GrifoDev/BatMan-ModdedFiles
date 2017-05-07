.class public Lcom/android/launcher3/common/stage/StageEntry;
.super Ljava/lang/Object;
.source "StageEntry.java"


# instance fields
.field public broughtToHome:Z

.field public enableAnimation:Z

.field public fromStage:I

.field private mCompleteRunnableCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalStateFrom:I

.field private mInternalStateTo:I

.field private mLayerViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public stageCountOnFinishAllStage:I

.field public toStage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    return-void
.end method


# virtual methods
.method public addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mCompleteRunnableCallBacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mCompleteRunnableCallBacks:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mCompleteRunnableCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getExtras(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0
.end method

.method public getInternalStateFrom()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mInternalStateFrom:I

    return v0
.end method

.method public getInternalStateTo()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mInternalStateTo:I

    return v0
.end method

.method public getLayerViews()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mLayerViews:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mLayerViews:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mLayerViews:Ljava/util/HashMap;

    return-object v0
.end method

.method public notifyOnCompleteRunnables()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageEntry;->mCompleteRunnableCallBacks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageEntry;->mCompleteRunnableCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putExtras(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageEntry;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInternalStateFrom(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/stage/StageEntry;->mInternalStateFrom:I

    return-void
.end method

.method public setInternalStateTo(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/stage/StageEntry;->mInternalStateTo:I

    return-void
.end method
