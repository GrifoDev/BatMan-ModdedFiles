.class public Lcom/samsung/android/mateservice/MateService;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "MateService.java"


# static fields
.field private static final HISTORY_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "Impl"


# instance fields
.field private mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/mateservice/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/MateService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/mateservice/common/Logger;

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateService;->getLoggerCount()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/mateservice/common/Logger;-><init>(I)V

    new-instance v5, Lcom/samsung/android/mateservice/action/ActionDispatcher;

    invoke-direct {v5, p1, v3}, Lcom/samsung/android/mateservice/action/ActionDispatcher;-><init>(Landroid/content/Context;Lcom/samsung/android/mateservice/common/LoggerContract;)V

    iput-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    new-instance v1, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;

    invoke-direct {v1, p1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;

    invoke-direct {v4}, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;-><init>()V

    new-instance v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;-><init>(Lcom/samsung/android/mateservice/common/Logger;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V

    new-instance v2, Lcom/samsung/android/mateservice/executable/ExecClientStateMgr;

    invoke-direct {v2, v3}, Lcom/samsung/android/mateservice/executable/ExecClientStateMgr;-><init>(Lcom/samsung/android/mateservice/common/Logger;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x110001

    invoke-virtual {v5, v6, v8, v0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120001

    invoke-virtual {v5, v6, v7, v0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120002

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120003

    invoke-virtual {v5, v6, v7, v4}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120004

    invoke-virtual {v5, v6, v7, v4}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120005

    invoke-virtual {v5, v6, v7, v1}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    new-instance v6, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;

    invoke-direct {v6, v3, v1}, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;-><init>(Lcom/samsung/android/mateservice/common/LoggerContract;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->setDefault(ZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLoggerCount()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/mateservice/common/FwDependency;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x28

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBootPhase(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/mateservice/MateService;->mBootPhase:I

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "Impl"

    const-string/jumbo v2, "dump"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Impl"

    const-string/jumbo v2, "permission denied - pid[%d] uid[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/mateservice/MateService;->getDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getDump()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "************************************************************************\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "productDev: %s / logLevel: %d  / safeString: %s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/mateservice/common/FwDependency;->isProductDev()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->logLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->useSafeString()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/samsung/android/mateservice/util/UtilLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mateservice/common/Dump;

    invoke-interface {v1, v0}, Lcom/samsung/android/mateservice/common/Dump;->getDump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    monitor-exit p0

    const-string/jumbo v3, "\n************************************************************************"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public systemReady()V
    .locals 3

    const-string/jumbo v0, "Impl"

    const-string/jumbo v1, "systemReady!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
