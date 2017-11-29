.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;
.super Landroid/app/job/JobService;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final GET_POLICY_INTERVAL:J

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_GET_POLICY:I = 0xc8


# instance fields
.field READ_PHONE_STATE:[Ljava/lang/String;

.field READ_PRIVILEGED_PHONE_STATE:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    :goto_0
    sput-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->GET_POLICY_INTERVAL:J

    return-void

    :cond_0
    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->READ_PHONE_STATE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->READ_PRIVILEGED_PHONE_STATE:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->GET_POLICY_INTERVAL:J

    return-wide v0
.end method

.method private checkPermission()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->READ_PHONE_STATE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->READ_PRIVILEGED_PHONE_STATE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "checkPermission. PERMISSION_DENIED "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "last_policy_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPolicy()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;-><init>()V

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;->readPolicy(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v0

    return v0
.end method

.method private needGetPolicy()Z
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_policy_check_time"

    invoke-static {v0, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->GET_POLICY_INTERVAL:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needGetPolicy : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", lastTime : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", currentTime : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->GET_POLICY_INTERVAL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    const-string v0, "onDestroy"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v6, 0x2

    const-string v0, "onStartCommand"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->GET_POLICY_INTERVAL:J

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->registerAlarm(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->stopSelf()V

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "is_anonymous"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->needGetPolicy()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->getPolicy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->stopSelf()V

    goto :goto_0

    :cond_4
    const-string v0, "last_policy_check_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    sget-wide v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->GET_POLICY_INTERVAL:J

    add-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->registerAlarm(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->stopSelf()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->cancel(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->stopSelf()V

    goto :goto_0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Job Started."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->onStartCommand(Landroid/content/Intent;II)I

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "Job Stopped."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
