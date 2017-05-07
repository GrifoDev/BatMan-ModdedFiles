.class Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderMoveStateHandler.java"


# instance fields
.field private mDetailDirection:I

.field private mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2

    const/16 v1, -0x3e7

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mDetailDirection:I

    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v5, -0x3e7

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "FolderName"

    const-string v5, "Match"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0, p1, v8}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "FolderName"

    const-string v5, "Match"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0, p1, v8}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v4, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "FolderName"

    const-string v5, "Match"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p0, p1, v8}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageNumberByScreenId(J)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    if-eq v3, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    iget v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->mapDirectionToPage(IIZ)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Page"

    const-string v5, "Exist"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "FolderName"

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_1
    invoke-virtual {p0, p1, v9}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    iget v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    invoke-virtual {v3, v4, v5, v8, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->hasHomeEmptySpace(IIII)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Space"

    const-string v5, "Available"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "FolderName"

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "ToPage"

    iget v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    iget v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Space"

    const-string v5, "Available"

    const-string v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "FolderName"

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6

    const/16 v4, -0x3e7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    const-string v2, "FolderName"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mFolderInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v3, "FolderName"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    const-string v2, "Page"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_1

    iput v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    :goto_1
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0

    :cond_1
    const-string v2, "Page"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPageDirection:I

    iput v4, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/launcher3/executor/HomeFolderMoveStateHandler;->mPage:I

    goto :goto_1
.end method
