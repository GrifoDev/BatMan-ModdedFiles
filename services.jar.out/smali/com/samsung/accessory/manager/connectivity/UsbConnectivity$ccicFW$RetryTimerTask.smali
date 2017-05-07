.class public Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;
.super Ljava/util/TimerTask;
.source "UsbConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryTimerTask"
.end annotation


# instance fields
.field public lock:Ljava/lang/Object;

.field mCount:I

.field private mIsFinished:Z

.field mRetryCount:I

.field mRetryPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

.field mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/Retryable;Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryCount:I

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mCount:I

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mIsFinished:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - RetryTimerTask .. Constructor"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;

    iput p3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mIsFinished:Z

    return v0
.end method

.method public run()V
    .locals 4

    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mCount:I

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SAccessoryManager - RetryTimerTask.. run.. Current count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SAccessoryManager - RetryTimerTask : Retry to println... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;

    invoke-interface {v3}, Lcom/samsung/accessory/manager/connectivity/Retryable;->getRetryIntValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;

    invoke-interface {v2}, Lcom/samsung/accessory/manager/connectivity/Retryable;->getRetryIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->checkError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - RetryTimerTask .. no error... "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Retryable;->onFinishedTask(Z)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - RetryTimerTask, check error .. true  "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->clearError()V

    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mCount:I

    iget v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryCount:I

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - RetryTimerTask, retry counting.. is over.. "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;->mRetryable:Lcom/samsung/accessory/manager/connectivity/Retryable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Retryable;->onFinishedTask(Z)V

    goto :goto_0
.end method
