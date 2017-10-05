.class Lcom/android/launcher3/common/stage/Stage$3;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/stage/Stage;->playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/stage/Stage;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$entry:Lcom/android/launcher3/common/stage/StageEntry;

.field final synthetic val$time:J

.field final synthetic val$toWorkSpace:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/stage/Stage;JLandroid/animation/AnimatorSet;ZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage$3;->this$0:Lcom/android/launcher3/common/stage/Stage;

    iput-wide p2, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$time:J

    iput-object p4, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    iput-boolean p5, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$toWorkSpace:Z

    iput-object p6, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const-string v1, "Stage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateTransitionAnim start runnable time gap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$time:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$3;->this$0:Lcom/android/launcher3/common/stage/Stage;

    invoke-static {v1}, Lcom/android/launcher3/common/stage/Stage;->access$400(Lcom/android/launcher3/common/stage/Stage;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const-string v1, "Stage"

    const-string v2, "fail to switch "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$3;->this$0:Lcom/android/launcher3/common/stage/Stage;

    iget-boolean v2, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$toWorkSpace:Z

    iget-object v3, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-static {v1, v8, v2, v3}, Lcom/android/launcher3/common/stage/Stage;->access$500(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
