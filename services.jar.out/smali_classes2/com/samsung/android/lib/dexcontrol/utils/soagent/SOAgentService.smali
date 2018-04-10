.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;
.super Ljava/lang/Object;
.source "SOAgentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSOAgentService:Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;


# instance fields
.field private isTestServer:Z

.field private mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mSOAgentService:Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->isTestServer:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;
    .locals 2

    const-class v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mSOAgentService:Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mSOAgentService:Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;-><init>()V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mSOAgentService:Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public sendAccessoryInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    if-eqz v3, :cond_0

    :goto_0
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendAccessoryInfo model_name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    serial_num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    const-string/jumbo v4, "SAMSUNG DEX"

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setType(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setModelName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v3, p2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setSerialNumber(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v3, p3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setHDMCC(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v3, p4}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setHDMNC(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-direct {v1, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;-><init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;)V

    iget-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->isTestServer:Z

    if-nez v3, :cond_1

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;-><init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;Ljava/lang/String;)V

    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->isTestServer:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->execute(Z)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    :goto_2
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_0
    new-instance v3, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;

    iget-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->isTestServer:Z

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;-><init>(ZLcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Retry"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->isTestServer:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->execute(Z)I

    move-result v2

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Fail to send"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method
