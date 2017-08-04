.class Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "HomeSettingsChangeAppsGridStateHandler.java"


# instance fields
.field private mGridOption:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mGridOption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_APPS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "GridOption"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mGridOption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->checkValidAppsGridOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_APPS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "GridOption"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mGridOption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->checkMatchAppsGridOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_APPS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "GridOption"

    const-string v2, "Valid"

    const-string v3, "AlreadySet"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_CHANGE_APPS_GRID:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "GridOption"

    const-string v2, "Valid"

    const-string v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mGridOption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->changeAppsScreengrid(Ljava/lang/String;)I

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    const-string v1, "GridOption"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_APPS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "GridOption"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v1, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "GridOption"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsChangeAppsGridStateHandler;->mGridOption:Ljava/lang/String;

    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
