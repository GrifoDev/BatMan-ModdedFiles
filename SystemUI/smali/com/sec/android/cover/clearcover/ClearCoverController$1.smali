.class Lcom/sec/android/cover/clearcover/ClearCoverController$1;
.super Landroid/os/Handler;
.source "ClearCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDensityHandled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get1(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverController;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Font scale changed, recreate view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverController;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
