.class public Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;
.super Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.source "UvdmLongTypeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInMsgMinLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    return-void
.end method

.method private close()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    move-result v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ccic_close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private replyError([BI)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v1, p2, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onFail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sleep(I)V
    .locals 4

    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected sendData([BI)V
    .locals 13

    const/16 v12, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    const-class v9, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    monitor-enter v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v9, 0x10

    if-lt v3, v9, :cond_3

    :cond_0
    if-eqz v4, :cond_9

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v12, :cond_b

    :cond_1
    if-eqz v4, :cond_f

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v12, :cond_11

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-nez v7, :cond_16

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_19

    :goto_4
    monitor-exit v0

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v4, :cond_0

    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v9, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v9}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_open()I

    move-result v6

    if-gez v6, :cond_6

    move v4, v7

    :goto_5
    if-eqz v4, :cond_7

    :goto_6
    if-eqz v4, :cond_8

    :cond_5
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v4, v8

    goto :goto_5

    :cond_7
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ccic_open failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x1f4

    invoke-direct {p0, v9}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->sleep(I)V

    goto :goto_7

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :goto_8
    monitor-exit v0

    return-void

    :cond_a
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v4, :cond_1

    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v9, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getPid()I

    move-result v10

    invoke-virtual {v9, v10, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataWrite(I[B)I

    move-result v6

    if-gez v6, :cond_d

    move v4, v7

    :goto_9
    if-eqz v4, :cond_e

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_d
    move v4, v8

    goto :goto_9

    :cond_e
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ccic_write failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, -0x2

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :goto_b
    monitor-exit v0

    return-void

    :cond_10
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_b

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v7, :cond_12

    monitor-exit v0

    return-void

    :cond_12
    if-gtz p2, :cond_14

    :goto_c
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getPid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataRead(I)[B

    move-result-object v2

    if-nez v2, :cond_15

    :cond_13
    sget-object v7, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ccic_read failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_14
    invoke-direct {p0, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->sleep(I)V

    goto :goto_c

    :cond_15
    array-length v7, v2

    iget v8, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    if-lt v7, v8, :cond_13

    const/4 v4, 0x1

    goto :goto_d

    :cond_16
    if-nez v4, :cond_17

    const/4 v7, -0x3

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    goto/16 :goto_3

    :cond_17
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    if-nez v7, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "callback is null"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    new-instance v5, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-direct {v5}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;-><init>()V

    invoke-virtual {v5, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v7, v5}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_19
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method

.method public setInMsgMinLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    return-void
.end method
