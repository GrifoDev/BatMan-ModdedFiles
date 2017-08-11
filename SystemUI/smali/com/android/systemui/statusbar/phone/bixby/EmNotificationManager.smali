.class public Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;
.super Ljava/lang/Object;
.source "EmNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;
    }
.end annotation


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

.field private mContext:Landroid/content/Context;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->getGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->getPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->readOutTts(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->selectNotification(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->selectNotification(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->checkActiveAppName()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    return-void
.end method

.method private checkActiveAppName()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getActiveApp()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "activeAppName is not Notification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getActiveApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "Notification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmNotificationManager"

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

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Notification"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    goto :goto_0
.end method

.method private getGridOption(Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string/jumbo v0, "EmNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getGridOption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    const-string/jumbo v0, "3"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "4"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "5"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_1
    const/4 v0, 0x3

    if-lt v8, v0, :cond_2

    const/4 v0, 0x5

    if-le v8, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "QuickPanelGridView"

    const-string/jumbo v1, "GridOption"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQSPanelGrid(I)Z

    const-string/jumbo v0, "QuickPanel"

    const-string/jumbo v1, "GridOption"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "yes"

    const-string/jumbo v4, "GridOption"

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    const/4 v10, 0x1

    goto :goto_0
.end method

.method private getPackageName(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/CHObject;

    const-string/jumbo v5, "packageName"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "EmNotificationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName - chObjects:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo v5, "no.package"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    return-object v4

    :cond_4
    const/4 v5, 0x1

    aget-object v4, v3, v5

    goto :goto_0
.end method

.method private readOutTts(Ljava/lang/StringBuffer;)V
    .locals 4

    const/16 v1, 0x12c

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz p1, :cond_1

    if-lez v0, :cond_1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tts length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestTts(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;)V

    :cond_1
    return-void
.end method

.method private selectNotification(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 7

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "AllNoti"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "ordinalNumber"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "AppName"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->selectAllNotification(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getCHObjects()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->getPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    invoke-virtual {v5, v1, v4, p1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->selectAppNameNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->selectOrdinalNotification(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNlgNoParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectNotification(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v5, "AllNoti"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const-string/jumbo v5, "ordinalNumber"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const-string/jumbo v5, "AppName"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->selectAllNotification(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->getPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    invoke-virtual {v5, v1, v4, p1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->selectAppNameNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyNotificationController:Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->selectOrdinalNotification(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNlgNoParameter(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createInterimStateListener()V
    .locals 2

    const-string/jumbo v0, "EmNotificationManager"

    const-string/jumbo v1, "createInterimStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->checkActiveAppName()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method
