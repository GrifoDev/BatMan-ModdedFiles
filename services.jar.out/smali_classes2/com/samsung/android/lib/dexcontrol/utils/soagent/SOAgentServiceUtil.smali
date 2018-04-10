.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;
.super Ljava/lang/Object;
.source "SOAgentServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSelloutTaskRunning:Z

.field private static sendDataInfo:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->sendDataInfo:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->mIsSelloutTaskRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->sendDataInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->mIsSelloutTaskRunning:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized checkSellOutInfoUpdate(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V
    .locals 6

    const/4 v2, 0x1

    const-class v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/ContextUtil;->getConnectivityStatus(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "<<checkSellOutInfoUpdate>> Network is not available"

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->mIsSelloutTaskRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->mIsSelloutTaskRunning:Z

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->sendDataInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->sendDataInfo:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->sendDataInfo:[Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/ContextUtil;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->sendDataInfo:[Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/ContextUtil;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkSellOutInfoUpdate"

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$1;

    invoke-direct {v2, p2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$1;-><init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSOTaskRunning()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->mIsSelloutTaskRunning:Z

    return v0
.end method
