.class Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageChangeOrderStateHandler.java"


# static fields
.field private static final HOME:Ljava/lang/String;

.field private static final HOME_EDIT:Ljava/lang/String;


# instance fields
.field private mFromPage:I

.field private mToPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1

    const/16 v0, -0x3e7

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    const-string v0, "HomePageEditView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgTargetState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPageInOverview(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPageInOverview(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "SameAsLocation"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    iget v3, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->changeHomePageOrder(II)I

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "SameAsLocation"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 4

    const/16 v3, -0x3e7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Page"

    sget-object v2, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "MoveLocation"

    sget-object v2, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    iget v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "Page"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string v1, "page_count"

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v0, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    if-ne v0, v3, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->HOME_EDIT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "PageLocation"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string v1, "page_count"

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v0, "PARAM_CHECK_ERROR"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
