.class public Lcom/android/systemui/EmSystemUIManager;
.super Ljava/lang/Object;
.source "EmSystemUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/EmSystemUIManager$1;,
        Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;
    }
.end annotation


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field public mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

.field private mContext:Landroid/content/Context;

.field private mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/EmSystemUIManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/EmSystemUIManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/EmSystemUIManager;->processEMMultiWindow(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/EmSystemUIManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/EmSystemUIManager;->processEMRecents(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/EmSystemUIManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/EmSystemUIManager;->processEMSystemUI(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/EmSystemUIManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/EmSystemUIManager$1;-><init>(Lcom/android/systemui/EmSystemUIManager;)V

    iput-object v1, p0, Lcom/android/systemui/EmSystemUIManager;->mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    iput-object p1, p0, Lcom/android/systemui/EmSystemUIManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    const-string/jumbo v1, "EmSystemUIManager"

    const-string/jumbo v2, " EmSystemUIManager setStartStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmSystemUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Notification"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    goto :goto_0
.end method

.method private processEMMultiWindow(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callPreProcessSingleState(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v0}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callMultiWindowManager()V

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private processEMRecents(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callRecentsManager(Ljava/lang/Object;)V

    return-void
.end method

.method private processEMSystemUI(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NotificationPanel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SystemUI_2010"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v2}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callOpenNotificationPanel()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v2}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callNotificationManager()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v2}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callCheckNotificationExist()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "Notification"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v2, "QuickPanel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "SystemUI_2009"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v2}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callOpenQuickSettingPanel()V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v2}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callNotificationManager()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "Lockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v2}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callKeyguardManager()V

    iget-object v2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "Notification"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    return-void
.end method
