.class public Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;
.super Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.source "UvdmShortTypeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected sendData([BI)V
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x0

    const/4 v3, -0x4

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getSenderEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    const-class v6, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    monitor-enter v6

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v6, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v6}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_open()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ccic_open : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v5, :cond_3

    const/4 v3, -0x1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getSenderEnable()Z

    move-result v6

    if-nez v6, :cond_8

    iput-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getSenderEnable()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v6, :cond_7

    monitor-exit v0

    return-void

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v6, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getPid()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_shortDataWrite(I[B)I

    move-result v5

    if-gez v5, :cond_6

    const/4 v3, -0x2

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ccic_write : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v6}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ccic_close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_8
    if-nez v3, :cond_9

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write data failed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v6, p2

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
