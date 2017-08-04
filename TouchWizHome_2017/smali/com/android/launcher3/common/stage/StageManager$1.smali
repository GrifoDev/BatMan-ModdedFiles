.class Lcom/android/launcher3/common/stage/StageManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StageManager.java"


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

.field final synthetic val$data:Lcom/android/launcher3/common/stage/StageEntry;

.field final synthetic val$enterAnim:Landroid/animation/Animator;

.field final synthetic val$fromStage:Lcom/android/launcher3/common/stage/Stage;

.field final synthetic val$toStage:Lcom/android/launcher3/common/stage/Stage;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iput-object p2, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    iput-object p3, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$enterAnim:Landroid/animation/Animator;

    iput-object p4, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    iput-object p5, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$fromStage:Lcom/android/launcher3/common/stage/Stage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "StageManager"

    const-string v4, "stageTransitionAnim onAnimationEnd"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v1}, Lcom/android/launcher3/common/stage/StageManager;->access$000(Lcom/android/launcher3/common/stage/StageManager;)V

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$enterAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    instance-of v6, v6, Lcom/android/launcher3/home/HomeController;

    iget-object v7, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/launcher3/common/stage/StageManager;->access$100(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$fromStage:Lcom/android/launcher3/common/stage/Stage;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$enterAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    instance-of v6, v6, Lcom/android/launcher3/home/HomeController;

    iget-object v7, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/launcher3/common/stage/StageManager;->access$100(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$toStage:Lcom/android/launcher3/common/stage/Stage;

    invoke-static {v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->access$200(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;)V

    return-void
.end method
