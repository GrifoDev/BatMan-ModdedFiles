.class public Lcom/samsung/android/sdk/ssf/common/model/RequestManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "mRequestQueue is null"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)V
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v0, "init1 : mRequestQueue is not null. Stop and make newRequestQueue is null"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v0, "init1 - Alloc new RequestQueue to mRequestQueue"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)V
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v0, "init2 : mRequestQueue is not null. Stop and make newRequestQueue is null"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v0, "init1 - Alloc new RequestQueue to mRequestQueue"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newPriorityRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/volley/RequestQueue;

    invoke-direct {v0, p1, p0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/volley/RequestQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    goto :goto_0
.end method
