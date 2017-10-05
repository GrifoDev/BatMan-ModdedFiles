.class Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;
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

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->access$3900(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HomeLoader"

    const-string v1, "finishBind, stopped : clearSBgDataStructures"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->clearSBgDataStructures()V

    :cond_0
    :goto_0
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishBind, try to register AppsAvailabilityCheck : mStooped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->access$4200(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sPendingPackages.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4400()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->access$4500(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4600()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4700()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HomeLoader"

    const-string v1, "finishBind, registerReceiver : AppsAvailabilityCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4900()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4800()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeLoader;->access$5002(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$4000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$4100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;->onLoaderComplete()V

    goto/16 :goto_0
.end method
