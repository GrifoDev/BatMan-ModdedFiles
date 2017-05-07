.class Lcom/android/systemui/recents/views/TaskView$6;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$info:Landroid/content/pm/ActivityInfo;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$info:Landroid/content/pm/ActivityInfo;

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$progress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskView;->-get3(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/views/TaskView$ProcessObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->getRunnable()Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskView;->-get3(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/views/TaskView$ProcessObserver;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskView;->-get3(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/views/TaskView$ProcessObserver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->setRunnable(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskView;->-get1(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskView;->-get1(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v6}, Lcom/android/systemui/recents/views/TaskView;->-get7(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0f064c

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v6}, Lcom/android/systemui/recents/views/TaskView;->-get5(Lcom/android/systemui/recents/views/TaskView;)I

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/systemui/recents/views/TaskView;->changeConventionalMode(Ljava/lang/String;Landroid/content/pm/ActivityInfo;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
