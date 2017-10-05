.class Lcom/android/launcher3/home/HomeLoader$2;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->startPageLoaderTask(Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$loaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$2;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$2;->val$loaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "HomeLoader"

    const-string v1, "startPageLoaderTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$2;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HomeLoader"

    const-string v1, "stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$2;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$2;->this$0:Lcom/android/launcher3/home/HomeLoader;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$1;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$202(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$2;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$2;->val$loaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
