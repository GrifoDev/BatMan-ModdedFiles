.class Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;
.super Ljava/lang/Thread;
.source "AppsModel.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

.field private volatile mUpdateCompleted:Z

.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsModel;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;)V
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mActive:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;-><init>(Lcom/android/launcher3/allapps/model/AppsModel$1;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->notifyDirty()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->terminate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->forceCompleteAndWait()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->isUpdateCompleted()Z

    move-result v0

    return v0
.end method

.method private forceCompleteAndWait()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mDirty:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->reset()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->start()V

    return-void
.end method

.method private isUpdateCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    return v0
.end method

.method private declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->reset()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized terminate()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mActive:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mActive:Z

    if-eqz v0, :cond_7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mActive:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mDirty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mDirty:Z

    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppsLoadTask enter wait : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    iget-boolean v2, v2, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->access$1500(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v1, "start AppsLoadTask task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mDirty:Z

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->access$1600(Lcom/android/launcher3/allapps/model/AppsModel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->access$1700(Lcom/android/launcher3/allapps/model/AppsModel;)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->access$1800(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v0, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->access$1900(Lcom/android/launcher3/allapps/model/AppsModel;I)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2000(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2200(Lcom/android/launcher3/allapps/model/AppsModel;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v0, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->access$1900(Lcom/android/launcher3/allapps/model/AppsModel;I)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mSyncContext:Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->mUpdateCompleted:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->checkUpdate()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_7
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v1, "LoadTask This run is expired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
