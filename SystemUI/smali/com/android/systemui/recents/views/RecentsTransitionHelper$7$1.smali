.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;->get()[Landroid/view/AppTransitionAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

.field final synthetic val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "RecentsTransitionHelper"

    const-string/jumbo v1, "IAppTransitionAnimationSpecsFuture.get(): run composeSpecs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

    iget-object v1, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;->composeSpecs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$7;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
