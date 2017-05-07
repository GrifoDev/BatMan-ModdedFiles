.class public Lcom/samsung/android/mateservice/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;,
        Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dispatcher"

.field private static final TASK_EXPIRED_TIME:J = 0xbb8L

.field private static final THREAD_COUNT:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefault:Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

.field private final mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;",
            ">;"
        }
    .end annotation
.end field

.field private final mFutures:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mateservice/common/LoggerContract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    return-void
.end method

.method private generateKey()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isExpiredTask(J)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareExecute()V
    .locals 20

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-wide v12, 0x7fffffffffffffffL

    const/4 v10, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const-string/jumbo v14, "Dispatcher"

    const-string/jumbo v15, "prepareExecute future count [%d]"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    const-string/jumbo v14, "Dispatcher"

    const-string/jumbo v15, "prepareExecute task[%d] - cancelled or done"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v14, "Dispatcher"

    const-string/jumbo v15, "prepareExecute task[%d] - active"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-nez v14, :cond_1

    move-wide v12, v8

    move-object v10, v5

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string/jumbo v14, "Dispatcher"

    const-string/jumbo v15, "prepareExecute remove future[%d]"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v8, v9}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_4
    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;

    const-string/jumbo v15, "Dispatcher"

    const-string/jumbo v16, "prepareExecute activeCount[%d], oldestTask[%d]"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/samsung/android/mateservice/common/LoggerContract;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    const/4 v14, 0x2

    if-lt v2, v14, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->isExpiredTask(J)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    invoke-interface {v10, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mLogger:Lcom/samsung/android/mateservice/common/LoggerContract;

    const-string/jumbo v15, "Dispatcher"

    const-string/jumbo v16, "prepareExecute expired task[%d]"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/samsung/android/mateservice/common/LoggerContract;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v11, :cond_6

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v12, v13}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    :cond_6
    return-void

    :catchall_1
    move-exception v14

    monitor-exit p0

    throw v14
.end method


# virtual methods
.method public append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;ZLcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v14, 0x0

    const-string/jumbo v3, "Dispatcher"

    const-string/jumbo v4, "execute 0x%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x0

    aput-object v7, v6, v15

    invoke-static {v3, v4, v6}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/samsung/android/mateservice/util/UtilAccess;->isAccessible(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mDefault:Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    if-eqz v10, :cond_1

    const/4 v5, 0x0

    move/from16 v9, p1

    invoke-static {v10}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->-get1(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v10}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->-get0(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Lcom/samsung/android/mateservice/action/ActionExecutable;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v3, v0, v5, v1}, Lcom/samsung/android/mateservice/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    move-result-object v14

    :cond_1
    :goto_0
    return-object v14

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->prepareExecute()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->generateKey()J

    move-result-wide v12

    new-instance v2, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;

    invoke-static {v10}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->-get0(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Lcom/samsung/android/mateservice/action/ActionExecutable;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;Landroid/os/Bundle;IILcom/samsung/android/mateservice/action/ActionDispatcher$Task;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr v12, v6

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v12, v13, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    invoke-static {v2, v12, v13}, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->-set0(Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;J)J

    const-string/jumbo v3, "Dispatcher"

    const-string/jumbo v4, "submit task [%d]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v15, 0x0

    aput-object v7, v6, v15

    invoke-static {v3, v4, v6}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {v8}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    instance-of v3, v8, Landroid/os/RemoteException;

    if-eqz v3, :cond_1

    throw v8

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public setDefault(ZLcom/samsung/android/mateservice/action/ActionExecutable;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;ZLcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mDefault:Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    return-void
.end method
