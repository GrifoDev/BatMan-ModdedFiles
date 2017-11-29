.class Lcom/android/launcher3/allapps/model/AppsModel$7;
.super Ljava/lang/Object;
.source "AppsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsModel;->onLauncherBindingItemsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v8, "onLauncherBindingItemsCompleted"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v7}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2400(Lcom/android/launcher3/allapps/model/AppsModel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v8, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0, v6}, Lcom/android/launcher3/allapps/model/AppsModel;->removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v7, v4, v6}, Lcom/android/launcher3/allapps/model/AppsModel;->removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility()V

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2500()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Lcom/android/launcher3/home/HomeLoader;->getIgnorePackage(Ljava/util/HashSet;)V

    if-eqz v2, :cond_2

    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v8, "onLauncherBindingItemsCompleted IconCache updateDbIcons"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/model/IconCache;->updateDbIcons(Ljava/util/Set;)V

    :cond_2
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLauncherBindingItemsCompleted mIsBootCompleted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2600()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v7}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2700(Lcom/android/launcher3/allapps/model/AppsModel;)Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v7}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2700(Lcom/android/launcher3/allapps/model/AppsModel;)Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->isStopped()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2800()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2900()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v8, "Apps finishBind but has PendingPackages, so registerReceiver : AppsAvailabilityCheck"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$3100()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;

    invoke-direct {v8}, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;-><init>()V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$3000()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$3200()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForAppStatusLog(Landroid/content/Context;)V

    return-void
.end method
