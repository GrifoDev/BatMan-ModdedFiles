.class Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcClient"

.field private static final WAIT_TIME:J = 0x5dcL


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/samsung/android/mateservice/IAgentService;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Lcom/samsung/android/mateservice/IAgentService;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;Lcom/samsung/android/mateservice/IAgentService;)Lcom/samsung/android/mateservice/IAgentService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    new-instance v0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;-><init>(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectionMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectionMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectionMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;->releasableClient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "close"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v4, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    iput-boolean v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "close - connection is remained"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method connect()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "AgentSvcClient"

    const-string/jumbo v4, "already connected"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.mateagent"

    const-string/jumbo v4, "com.samsung.android.mateagent.interact.AgentService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v5, "SYSTEM"

    invoke-static {v5}, Lcom/samsung/android/mateservice/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v3, v1, v4, v7, v5}, Lcom/samsung/android/mateservice/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5dc

    invoke-interface {v3, v6, v7, v4}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mateservice/IAgentService;

    iput-object v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "AgentSvcClient"

    const-string/jumbo v4, "failed to bind agent svc"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v6
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mateservice/IAgentService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
