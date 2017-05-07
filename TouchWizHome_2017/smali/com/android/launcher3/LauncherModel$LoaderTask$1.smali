.class Lcom/android/launcher3/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindWorkspace()Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaderComplete()V
    .locals 2

    const-string v0, "Launcher.Model"

    const-string v1, "onLoaderComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    # getter for: Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->access$400(Lcom/android/launcher3/LauncherModel$LoaderTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->access$202(Lcom/android/launcher3/LauncherModel;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    # invokes: Lcom/android/launcher3/LauncherModel$LoaderTask;->updateIconCache()V
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->access$500(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DisableableAppCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DisableableAppCache;->makeDisableableAppList()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    # invokes: Lcom/android/launcher3/LauncherModel$LoaderTask;->endLoaderTask()V
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->access$700(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
