.class Lcom/android/launcher3/common/model/DataLoader$3;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/DataLoader;->executeLoaderTask(Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/DataLoader;

.field final synthetic val$loaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/DataLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/DataLoader$3;->this$0:Lcom/android/launcher3/common/model/DataLoader;

    iput-object p2, p0, Lcom/android/launcher3/common/model/DataLoader$3;->val$loaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader$3;->this$0:Lcom/android/launcher3/common/model/DataLoader;

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader$3;->this$0:Lcom/android/launcher3/common/model/DataLoader;

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader$3;->val$loaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
