.class Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;
.super Landroid/content/BroadcastReceiver;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppsAvailabilityCheck"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4500()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4600()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4700()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v11

    if-nez v11, :cond_1

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4900()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v11

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$4800()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x2000

    invoke-virtual {v11, v12, v6, v13}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package found on sd-card: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v1, 0x3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5100()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    new-instance v11, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5000()Lcom/android/launcher3/LauncherModel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v12, v1, v3, v7}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v8, v11}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5300()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    new-instance v11, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5200()Lcom/android/launcher3/LauncherModel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v12, v1, v3, v7}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v8, v11}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_5
    # getter for: Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5400()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
