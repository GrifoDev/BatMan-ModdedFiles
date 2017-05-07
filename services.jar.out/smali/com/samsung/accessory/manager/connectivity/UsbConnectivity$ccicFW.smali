.class Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;
.super Ljava/lang/Object;
.source "UsbConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Retryable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ccicFW"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;,
        Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;
    }
.end annotation


# instance fields
.field mFileOutputStream:Ljava/io/FileOutputStream;

.field mOutputStreamWriter:Ljava/io/OutputStreamWriter;

.field private mPath:Ljava/lang/String;

.field mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

.field private mRetryIntValue:I

.field private mRetryTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->writeFile(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryIntValue:I

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;-><init>()V

    return-void
.end method

.method private getRetryTimer()Ljava/util/Timer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPath:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized writeFile(I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SAccessoryManager - CCIC Write: try to printIn.  operate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileOutputStream;

    const-string/jumbo v1, "/sys/class/sec/ccic/samsung_uvdm"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->println(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->clearError()V

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->setRetryIntValue(I)V

    const/16 v8, 0xa

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->getRetryTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-direct {v1, p0, v2, v8}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$RetryTimerTask;-><init>(Lcom/samsung/accessory/manager/connectivity/Retryable;Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;I)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - CCIC Write: finally.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "An authentication state updated.. no need to retry...close stream.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->close()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v7

    :try_start_4
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SAccessoryManager - CCIC Write: IOException. error =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - CCIC Write: finally.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "An authentication state updated.. no need to retry...close stream.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->close()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v7

    :try_start_7
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v6

    :try_start_8
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SAccessoryManager - CCIC Write: FileNotFoundException. error =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager - CCIC Write: finally.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "An authentication state updated.. no need to retry...close stream.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->close()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v7

    :try_start_b
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SAccessoryManager - CCIC Write: finally.."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    if-nez v1, :cond_a

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "An authentication state updated.. no need to retry...close stream.."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->close()V

    :cond_8
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    :cond_9
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_a
    :goto_1
    :try_start_d
    throw v0

    :catch_5
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getRetryIntValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryIntValue:I

    return v0
.end method

.method public onFinishedTask(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SAccessoryManager - RetryTimerTask.. onFinishedTask.. Timer - cancel, stream - close"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->getRetryTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iput-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryTimer:Ljava/util/Timer;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mPrintWriter:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;->close()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mOutputStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRetryIntValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->mRetryIntValue:I

    return-void
.end method
