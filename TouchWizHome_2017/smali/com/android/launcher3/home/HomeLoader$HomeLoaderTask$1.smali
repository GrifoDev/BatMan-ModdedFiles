.class Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->finishBind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    # getter for: Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->access$2900(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HomeLoader"

    const-string v1, "finishBind, stopped : clearSBgDataStructures"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->clearSBgDataStructures()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    # getter for: Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->access$3200(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$3300(Lcom/android/launcher3/home/HomeLoader;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$3400()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HomeLoader"

    const-string v1, "finishBind, registerReceiver : AppsAvailabilityCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$3600()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sWorkerHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$3500()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # setter for: Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeLoader;->access$3702(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$3000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$3100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;->onLoaderComplete()V

    goto :goto_0
.end method
