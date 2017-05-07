.class Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderAddIconSearchViewStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFolderAddIconSearchView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HomeFolderAddIconSearchView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string v0, "AppsFolderAddIconSearchView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v2, "HomeFolderAddIconSearchView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->enterHomeFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->enterAppsFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1

    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
