.class Lcom/android/server/policy/GlobalActions$33;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$33$1;
    }
.end annotation


# instance fields
.field final longPressHandler:Landroid/os/Handler;

.field mLongPressed:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$isPort:Z

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/ImageView;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$33;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$33;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iput-object p4, p0, Lcom/android/server/policy/GlobalActions$33;->val$tempView:Landroid/view/View;

    iput-boolean p5, p0, Lcom/android/server/policy/GlobalActions$33;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->longPressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/GlobalActions$33$1;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$33;->val$tempView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$33;->val$isPort:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$33$1;-><init>(Lcom/android/server/policy/GlobalActions$33;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get73()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    return v4

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, v1, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v4}, Lcom/android/server/policy/GlobalActions;->-set9(Lcom/android/server/policy/GlobalActions;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->longPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->mLongPressed:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return v4

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, p1, p2}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get33(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->longPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get33(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->longPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get33(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->longPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, p1, p2}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get71()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$33;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$33;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$33;->val$tempView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$33;->val$isPort:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap14(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method
