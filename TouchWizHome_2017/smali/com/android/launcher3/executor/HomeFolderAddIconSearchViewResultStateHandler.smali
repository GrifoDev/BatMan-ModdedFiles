.class Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderAddIconSearchViewResultStateHandler.java"


# instance fields
.field private mSearchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFolderAddIconSearchResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HomeFolderAddIconSearchResult"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "AppsFolderAddIconSearchResult"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->setAddAppsSearchText(Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
