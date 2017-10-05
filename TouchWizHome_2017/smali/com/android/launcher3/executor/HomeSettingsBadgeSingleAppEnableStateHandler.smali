.class Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingsBadgeSingleAppEnableStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v0, "HomeSettingsBadgeSingleAppEnable"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 8

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppName:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mClassName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleAppBadge"

    const-string v6, "AlreadyOn"

    const-string v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->enableSingleAppBadge(Ljava/lang/String;Z)I

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleAppBadge"

    const-string v6, "AlreadyOn"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    :cond_4
    const-string v4, "HomeSettingsBadgeManagementView"

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleApp"

    const-string v6, "Match"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v4, "SingleApp"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v1, "PARAM_CHECK_ERROR"

    goto :goto_0

    :cond_1
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
