.class public Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field private final mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

.field private mContPreserved:Z

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    iput v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    new-instance v0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    return-void
.end method

.method private setConnectionPreserved(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "AgentSvcMgr"

    const-string/jumbo v1, "setConnectionPreserved %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput-boolean p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "keepConnectionState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->setConnectionPreserved(Z)V

    :cond_0
    return-object v2
.end method

.method public getClient()Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releasableClient()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
