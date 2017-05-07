.class final Lcom/android/server/wm/ConventionalModeController$PackageSaveScheduler;
.super Landroid/os/Handler;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ConventionalModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PackageSaveScheduler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ConventionalModeController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ConventionalModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$PackageSaveScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController$PackageSaveScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$PackageSaveScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v2}, Lcom/android/server/wm/ConventionalModeController;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$PackageSaveScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/ConventionalModeController;->-wrap0(Lcom/android/server/wm/ConventionalModeController;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
