.class Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;
.super Ljava/lang/Thread;
.source "WidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

.field final synthetic this$0:Lcom/android/launcher3/widget/model/WidgetLoader;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader;)V
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    new-instance v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;-><init>(Lcom/android/launcher3/widget/model/WidgetLoader$1;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader;Lcom/android/launcher3/widget/model/WidgetLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;-><init>(Lcom/android/launcher3/widget/model/WidgetLoader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->notifyDirty()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->terminate()V

    return-void
.end method

.method private declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

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
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

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
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    if-eqz v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    const-string v2, "WidgetLoader"

    const-string v3, "enter wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/launcher3/widget/model/WidgetLoader;->access$400(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "WidgetLoader"

    const-string v3, "start loading"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->reset()V

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    invoke-static {v2, v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->access$500(Lcom/android/launcher3/widget/model/WidgetLoader;Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    iget-boolean v2, v2, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    iget-boolean v3, v3, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->hasUninstallApp:Z

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->access$600(Lcom/android/launcher3/widget/model/WidgetLoader;Ljava/util/List;Z)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
