.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final HEARTBEAT_JOB_ID:I = 0x64

.field private static final READ_PHONE_STATE:[Ljava/lang/String;

.field private static final READ_PRIVILEGED_PHONE_STATE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterval:J

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->READ_PHONE_STATE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->READ_PRIVILEGED_PHONE_STATE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPermission()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->READ_PHONE_STATE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->READ_PRIVILEGED_PHONE_STATE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "checkPermission. PERMISSION_GRANTED "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->startHeartBeat()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "checkPermission. PERMISSION_DENIED "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "heart_beat_interval"

    const-wide/32 v4, 0x2932e00

    invoke-static {v1, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->stopSelf()V

    goto :goto_0

    :cond_3
    const-string v1, "PREPRD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "heart_beat_interval"

    const-wide/32 v4, 0x36ee80

    invoke-static {v1, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    goto :goto_1
.end method


# virtual methods
.method checkAvailableHearbeat()Z
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/32 v0, 0x2932e00

    const-string v2, "PREPRD"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x36ee80

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "last_heart_beat_time"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v6, "heart_beat_interval"

    invoke-static {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const-string v6, "heart_beat_interval"

    invoke-static {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heartbeat isn\'t available  for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mins."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notifyResult()V
    .locals 10

    const-wide/32 v8, 0x2932e00

    const-wide/32 v6, 0x36ee80

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    const-string v0, "heartbeat is ok"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "last_heart_beat_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "heart_beat_interval"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    const-string v3, "heart_beat_interval"

    invoke-static {v3, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->stopSelf()V

    return-void

    :cond_2
    const-string v3, "PREPRD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string v2, "heart_beat_interval"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    const-string v3, "heart_beat_interval"

    invoke-static {v3, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    goto :goto_0

    :cond_4
    const-string v0, "heartbeat is not ok"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    const-string v0, "SERVICE CREATED"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v2, 0x2

    const-string v0, "onStartCommand"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    :cond_1
    const-string v0, "is_anonymous"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->stopSelf()V

    :goto_0
    return v2

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->checkPermission()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->startHeartBeat()V

    goto :goto_0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Job Started."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->onStartCommand(Landroid/content/Intent;II)I

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "Job Stopped."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected startHeartBeat()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->disableComponents(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->isImsiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No Sim Present.."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->notifyResult()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->checkAvailableHearbeat()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "No Heartbeat time"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->notifyResult()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "No Network..."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->enableComponents(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->notifyResult()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getDuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;->setDeviceUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Heartbeat is available."

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;-><init>()V

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;->heartBeat(ILjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0

    :cond_4
    const-string v0, "Device not authenticated..."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->mInterval:J

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatJob;->notifyResult()V

    goto :goto_0
.end method
