.class Lcom/android/server/power/ShutdownThread$4$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$4$2$1;
    }
.end annotation


# instance fields
.field final longPressHandler:Landroid/os/Handler;

.field mLongPressed:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$4;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$4;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4$2;->this$1:Lcom/android/server/power/ShutdownThread$4;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$4$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/ShutdownThread$4$2$1;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$4$2;->val$ctx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownThread$4$2$1;-><init>(Lcom/android/server/power/ShutdownThread$4$2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get25()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get17()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get11()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get13()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->-set9(Z)Z

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v3

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
