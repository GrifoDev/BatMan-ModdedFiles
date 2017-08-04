.class Lcom/android/launcher3/common/stage/StageManager$2;
.super Ljava/lang/Object;
.source "StageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/stage/StageManager;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$data:Lcom/android/launcher3/common/stage/StageEntry;

.field final synthetic val$enterAnim:Landroid/animation/Animator;

.field final synthetic val$fromStage:Lcom/android/launcher3/common/stage/Stage;

.field final synthetic val$time:J

.field final synthetic val$toStage:Lcom/android/launcher3/common/stage/Stage;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/stage/StageManager;JLandroid/animation/AnimatorSet;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iput-wide p2, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$time:J

    iput-object p4, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$animatorSet:Landroid/animation/AnimatorSet;

    iput-object p5, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    iput-object p6, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$fromStage:Lcom/android/launcher3/common/stage/Stage;

    iput-object p7, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$enterAnim:Landroid/animation/Animator;

    iput-object p8, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "StageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stageTransitionAnim start runnable time gap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$time:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v1}, Lcom/android/launcher3/common/stage/StageManager;->access$300(Lcom/android/launcher3/common/stage/StageManager;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$animatorSet:Landroid/animation/AnimatorSet;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to enter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$fromStage:Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "StageManager"

    const-string v2, "current stack : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v1}, Lcom/android/launcher3/common/stage/StageManager;->access$400(Lcom/android/launcher3/common/stage/StageManager;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager$2;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$fromStage:Lcom/android/launcher3/common/stage/Stage;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$enterAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    instance-of v6, v6, Lcom/android/launcher3/home/HomeController;

    iget-object v7, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/launcher3/common/stage/StageManager;->access$500(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$enterAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    move v3, v2

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    instance-of v5, v5, Lcom/android/launcher3/home/HomeController;

    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-static {v1, v4, v3, v5, v6}, Lcom/android/launcher3/common/stage/StageManager;->access$500(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/android/launcher3/util/DvfsUtil;

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager$2;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v4}, Lcom/android/launcher3/common/stage/StageManager;->access$600(Lcom/android/launcher3/common/stage/StageManager;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$2;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
