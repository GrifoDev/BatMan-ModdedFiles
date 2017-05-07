.class public Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;
.super Ljava/lang/Object;
.source "ExecAgentSvcRelay.java"

# interfaces
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcRelay"


# instance fields
.field private final mAgentSvcMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

.field private final mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mateservice/common/LoggerContract;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;

    iput-object p2, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mAgentSvcMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 10

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;

    const-string/jumbo v3, "AgentSvcRelay"

    const-string/jumbo v5, "relay action 0x%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/mateservice/util/UtilLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/samsung/android/mateservice/common/LoggerContract;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mAgentSvcMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    invoke-interface {v2}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;->getClient()Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    return-object v4

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;

    const-string/jumbo v3, "AgentSvcRelay"

    const-string/jumbo v5, "failed to connect agent svc"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/samsung/android/mateservice/common/LoggerContract;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_2
    if-eqz v0, :cond_5

    :try_start_7
    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_3
    if-eqz v3, :cond_7

    :try_start_8
    throw v3

    :catch_4
    move-exception v5

    if-nez v3, :cond_6

    move-object v3, v5

    goto :goto_3

    :cond_6
    if-eq v3, v5, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method
