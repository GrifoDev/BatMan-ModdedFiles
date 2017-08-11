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
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/widget/ProgressBar;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->-get2(Lcom/android/systemui/recents/views/TaskView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$6$1;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/recents/views/TaskView$6$1;-><init>(Lcom/android/systemui/recents/views/TaskView$6;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    const-wide/16 v2, 0xc80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
