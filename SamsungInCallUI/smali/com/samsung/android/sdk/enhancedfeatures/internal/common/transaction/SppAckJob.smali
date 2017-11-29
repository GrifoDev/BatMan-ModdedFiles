.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final SPP_ACK_JOB_ID:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "SppAckJob"


# instance fields
.field private mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static getNewJobId(Landroid/app/job/JobScheduler;)I
    .locals 4

    const/16 v1, 0x2710

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find new job id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SppAckJob"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static startJobService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startJobService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SppAckJob"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->getNewJobId(Landroid/app/job/JobScheduler;)I

    move-result v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const-string v3, "notificationId"

    invoke-virtual {v2, v3, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spp ack Job scheduled.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SppAckJob"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    const-string v0, "onCreate"

    const-string v1, "SppAckJob"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->create()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const-string v1, "SppAckJob"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->destroy()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "notificationId"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SppAckJob"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->start(Ljava/lang/String;I)V

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "onStopJob"

    const-string v1, "SppAckJob"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SppAckJob"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckJob;->stopSelf()V

    return-void
.end method
