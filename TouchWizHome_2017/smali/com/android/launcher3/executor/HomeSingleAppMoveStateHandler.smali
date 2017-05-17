.class Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSingleAppMoveStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mDetailDirection:I

.field private mObjectName:Ljava/lang/String;

.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iput v1, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iput v1, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    const-string v0, "AppName"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mObjectName:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "AppName"

    const-string v6, "Match"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "AppName"

    const-string v6, "Match"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "AppName"

    const-string v6, "Match"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageNumberByScreenId(J)I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    const/16 v5, -0x3e7

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    invoke-virtual {v4, v0, v5, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->mapDirectionToPage(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    :cond_5
    iget v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    if-ltz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Page"

    const-string v6, "Exist"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemViewByTitle(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->hasHomeEmptySpace(IIII)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Space"

    const-string v6, "Available"

    const-string v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "ToPage"

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    if-nez v4, :cond_6

    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Space"

    const-string v6, "Available"

    const-string v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_2
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mObjectName:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mObjectName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Match"

    const-string v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0

    :cond_3
    const-string v2, "Page"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Page"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    :goto_1
    iget v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    if-gez v2, :cond_5

    iget v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    const/16 v2, -0x3e7

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    :goto_2
    const-string v2, "PARAM_CHECK_OK"

    goto/16 :goto_0

    :cond_4
    const-string v2, "Page"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    goto :goto_2
.end method
