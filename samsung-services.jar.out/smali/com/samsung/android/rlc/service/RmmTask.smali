.class public Lcom/samsung/android/rlc/service/RmmTask;
.super Ljava/lang/Object;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;,
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
    }
.end annotation


# static fields
.field public static final BOOT:I = 0x0

.field public static final CHECK_INIT_STATUS:I = 0x7

.field private static final CscFeature_RMM_EnableCode:Ljava/lang/String; = "CscFeature_Common_SupportRmm"

.field public static final DELIVERY_REPORT:I = 0x2

.field public static final GCM_MG_REGISTRATION:I = 0x5

.field public static final GCM_PUSH_REG:I = 0x3

.field private static final GCM_RCV_PERMISSION:Ljava/lang/String; = "com.google.android.c2dm.permission.SEND"

.field public static final INIT:I = 0x1

.field private static final INTENT_GCM_RECEIVE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final INTENT_GCM_REG_CANCEL:Ljava/lang/String; = "android.intent.action.REGISTRATION_CANCELED"

.field private static final INTENT_GCM_REG_COMPETE:Ljava/lang/String; = "android.intent.action.REGISTRATION_COMPLETED"

.field private static final INTENT_GCM_REG_ID:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final INTENT_INIT_DVC:Ljava/lang/String; = "com.samsung.android.rmm.initialize"

.field private static final INTENT_INIT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final INTENT_RETRY_C2DMREG:Ljava/lang/String; = "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_CEHCKDVC:Ljava/lang/String; = "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

.field private static final INTENT_RETRY_COMPETE:Ljava/lang/String; = "com.samsung.android.rlc.COMPLETE_RETRY"

.field private static final INTENT_RETRY_DELIVERY:Ljava/lang/String; = "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

.field private static final INTENT_RETRY_GCMREG:Ljava/lang/String; = "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_GCMREQ:Ljava/lang/String; = "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

.field private static final INTENT_RETRY_HTTP:Ljava/lang/String; = "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

.field private static final INTENT_RETRY_PREPARE:Ljava/lang/String; = "com.samsung.android.rlc.PREPARE_RETRY"

.field private static final INTENT_RETRY_REPORT:Ljava/lang/String; = "com.samsung.android.rlc.REPORT_RETRY"

.field private static final INTENT_RETRY_SPPREG_:Ljava/lang/String; = "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_SPPREQ:Ljava/lang/String; = "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

.field private static final INTENT_RETRY_TOKEN:Ljava/lang/String; = "com.samsung.android.rlc.TOKEN_RETRY"

.field private static final INTENT_RETRY_UNLOCK_ALERT:Ljava/lang/String; = "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

.field private static final INTENT_SPP_ACK_RESULT:Ljava/lang/String; = "com.sec.spp.NotificationAckResultAction"

.field private static final INTENT_SPP_ERROR:Ljava/lang/String; = "com.sec.spp.ServiceAbnormallyStoppedAction"

.field private static final INTENT_SPP_MESSAGE:Ljava/lang/String; = "eb850acb179b3447"

.field private static final INTENT_SPP_REG_CHANGE:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field private static final INTENT_SYS_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_SYS_NOTI_CANCLE:Ljava/lang/String; = "android.intent.action.NOTI_CANCELED"

.field private static final INTENT_SYS_TIME_CHANGE:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field private static final INTENT_WAKE_UP_CLIENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field public static final RLC_CLEAR:I = 0xd

.field public static final RLC_COMPLETE:I = 0xa

.field public static final RLC_NOT_SUPPORT:I = 0xc

.field public static final RLC_PREPARE:I = 0x9

.field public static final RLC_REG_RCV:I = 0xe

.field public static final RLC_RESULT_REPORT:I = 0xb

.field protected static final RMM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rlc"

.field public static final SPP_MG_REGISTRATION:I = 0x6

.field public static final SPP_PUSH_REG:I = 0x4

.field private static final SYS_PERMISSION:Ljava/lang/String; = "com.sec.pcw.device.permission.PROTECT_SYSTEM"

.field static final TAG:Ljava/lang/String;

.field public static final UNKNOWN:I = -0x1

.field public static final UNLOCK_REPORT:I = 0x8

.field private static connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

.field private static connRegTime:J

.field private static rmmTask:Lcom/samsung/android/rlc/service/RmmTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/rlc/service/RmmTask;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    const-class v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RmmTask created"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;-><init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;
    .locals 2

    const-class v1, Lcom/samsung/android/rlc/service/RmmTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/service/RmmTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getOperationName(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, "BOOT"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "INIT"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "DELIVERY_REPORT"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "GCM_PUSH_REG"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "SPP_PUSH_REG"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "GCM_MG_REGISTRATION"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "SPP_MG_REGISTRATION"

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "CHECK_INIT_STATUS"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "UNLOCK_REPORT"

    return-object v0

    :cond_8
    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "RLC_NOT_SUPPORT"

    return-object v0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string/jumbo v0, "RLC_RESULT_REPORT"

    return-object v0

    :cond_a
    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    const-string/jumbo v0, "RLC_COMPLETE"

    return-object v0

    :cond_b
    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    const-string/jumbo v0, "RLC_PREPARE"

    return-object v0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string/jumbo v0, "RLC_CREAR"

    return-object v0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "RLC_REGISTRATION_RECEIVER"

    return-object v0

    :cond_e
    const-string/jumbo v0, "UNKNOWN"

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo v3, "type"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "RLC Cleared !!! "

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHandleIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->init(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->registerAtGCM(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->registerAtSPP(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->run(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "Completed"

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "clearOp"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-static {v3, v0, v4}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    :pswitch_9
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_a
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_b
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/rlc/service/RmmTask;->registerRcv(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.rlc"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PACKAGE NAME :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public static regConnReceiver(Landroid/content/Context;)V
    .locals 8

    const-wide/32 v6, 0x44aa200

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Register Connectivity Receiver"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-wide v2, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    :cond_1
    new-instance v2, Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    invoke-direct {v2}, Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;-><init>()V

    sput-object v2, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Previous register time is small then max back off"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerRcv(Landroid/content/Context;)V
    .locals 32

    const-string/jumbo v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v27, "ro.security.vaultkeeper.feature"

    invoke-static/range {v27 .. v27}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "CSC : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " , Rmm prop : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", VaultKeeper : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/service/RmmTask;->isInstalled(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string/jumbo v27, "1"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string/jumbo v27, "rlc.cscFeature"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v27

    const-string/jumbo v28, "CscFeature_Common_SupportRmm"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v27

    const-string/jumbo v28, "cscEnable"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v27

    const-string/jumbo v28, "cscEnable"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "CscFeature_RMM_EnableCode : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    invoke-static {v9}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_2

    :cond_1
    if-nez v7, :cond_2

    const-string/jumbo v27, "true"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/rlc/util/RLCUtil;->isRMMEnable()Z

    move-result v27

    if-eqz v27, :cond_6

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v27

    const-string/jumbo v28, "bootTime"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "There is no boot Time : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v27

    const-string/jumbo v28, "bootTime"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/rlc/util/RLCUtil;->checkRMMFunctions()Z

    move-result v27

    if-nez v27, :cond_5

    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Error in RMM Function"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "There is no RMM Client"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v10

    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Exception in RMMManager : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo v27, "boot_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "[registerRcv]"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/samsung/android/rlc/receiver/GCMReceiver;

    invoke-direct {v11}, Lcom/samsung/android/rlc/receiver/GCMReceiver;-><init>()V

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v27, "com.google.android.c2dm.intent.RECEIVE"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.samsung.android.rlc"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v27, "com.google.android.c2dm.permission.SEND"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v27, "com.google.android.c2dm.intent.REGISTRATION"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.samsung.android.rlc"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v27, "com.google.android.c2dm.permission.SEND"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.google.android.c2dm.permission.SEND"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.REGISTRATION_CANCELED"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.google.android.c2dm.permission.SEND"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    new-instance v22, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;

    invoke-direct/range {v22 .. v22}, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;-><init>()V

    const-string/jumbo v27, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.NOTI_CANCELED"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.TIME_SET"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    new-instance v26, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;

    invoke-direct/range {v26 .. v26}, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;-><init>()V

    const-string/jumbo v27, "com.samsung.remotelock.CLIENT_WAKEUP"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "rlc"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v27, "operation.initialize"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    new-instance v16, Lcom/samsung/android/rlc/receiver/RetryReceiver;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/rlc/receiver/RetryReceiver;-><init>()V

    const-string/jumbo v27, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.TOKEN_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.COMPLETE_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.PREPARE_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.REPORT_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    new-instance v19, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/rlc/receiver/SPPReceiver;-><init>()V

    const-string/jumbo v27, "eb850acb179b3447"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.sec.spp.NotificationAckResultAction"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.sec.spp.RegistrationChangedAction"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v27, "com.sec.spp.ServiceAbnormallyStoppedAction"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    new-instance v13, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;

    invoke-direct {v13}, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;-><init>()V

    const-string/jumbo v27, "com.samsung.android.rmm.initialize"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.samsung.android.permission.RMM_INIT"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v13, v12, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    new-instance v24, Lcom/samsung/android/rlc/receiver/UnlockReceiver;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/rlc/receiver/UnlockReceiver;-><init>()V

    const-string/jumbo v27, "com.samsung.android.action.RMM_BLINK_UNLOCK"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v27, "com.samsung.android.permission.RMM_INIT"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_6
    sget-object v27, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "This device not support rmm service"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/service/RmmTask;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v2, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    invoke-direct {v2, v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V

    :cond_1
    return-void
.end method

.method public static unregConnReceiver(Landroid/content/Context;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unregister Connectivity Receiver"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
