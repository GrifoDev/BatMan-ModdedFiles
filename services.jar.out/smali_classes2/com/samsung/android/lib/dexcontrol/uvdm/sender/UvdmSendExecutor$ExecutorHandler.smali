.class Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;
.super Ljava/lang/Object;
.source "UvdmSendExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutorHandler"
.end annotation


# instance fields
.field private final REQUEST_THREAD_NAME:Ljava/lang/String;

.field private isSending:Z

.field private requestThread:Landroid/os/HandlerThread;

.field private requestThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->this$0:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "REQUEST_THREAD_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->REQUEST_THREAD_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->isSending:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;-><init>(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->isSending:Z

    return p1
.end method


# virtual methods
.method public enqueueRequest([BI)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public isSending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->isSending:Z

    return v0
.end method

.method public startThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->REQUEST_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;-><init>(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public stopThread()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->requestThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
