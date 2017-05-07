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


# static fields
.field public static final EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

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

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/android/systemui/EmSystemUIManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/android/systemui/EmSystemUIManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/EmSystemUIManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/EmSystemUIManager$1;-><init>(Lcom/android/systemui/EmSystemUIManager;)V

    iput-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    iput-object p1, p0, Lcom/android/systemui/EmSystemUIManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Notification"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManager;->mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    const-string/jumbo v0, "EmSystemUIManager"

    const-string/jumbo v1, " EmSystemUIManager setStartStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "NotificationPanel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SystemUI_2010"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v3}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callOpenNotificationPanel()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v3}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callNotificationManager()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v3, "NotificationPanel"

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v3}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callCheckNotificationExist()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "Notification"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v3, "QuickPanel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "SystemUI_2009"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v3}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callOpenQuickSettingPanel()V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v3}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callNotificationManager()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v3, "QuickPanel"

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "Lockscreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v3}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callKeyguardManager()V

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "Notification"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    return-void
.end method
