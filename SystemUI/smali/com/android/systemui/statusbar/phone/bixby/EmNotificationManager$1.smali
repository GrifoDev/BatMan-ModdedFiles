.class Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;
.super Ljava/lang/Object;
.source "EmNotificationManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3

    const-string/jumbo v0, "EmNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onParamFillingReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "EmNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRuleCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "QuickPanel"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScreenStatesRequested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "NotificationPanel"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "Root"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-set0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "EmNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ruleId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ClearSelectedNotifications"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v9, v1, v14}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap4(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Lcom/android/systemui/statusbar/NotificationData;Ljava/util/Map;Ljava/lang/String;)V

    const-string/jumbo v0, "ExpandSelectedNotifications"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "OpenSelectedNotifications"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ExpandSelectedNotifications"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickPanelEditMode"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showEdit()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanelEditMode"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "QuickPanelGridView"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "QuickPanelChangeGrid"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showGridPopup()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "ChangeGrid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanelGridView"

    const-string/jumbo v2, "GridOption"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "QuickPanelContactUs"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->launchContactUsApp()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanel"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "CloseQuickPanel"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedState()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "EmNotificationManager"

    const-string/jumbo v1, "panel closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanel"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "BrightnessSettingPanel"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "ShowControlOnTheTop"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v12, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v0, "BrightnessSettingPanel"

    invoke-direct {v12, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBrightnessOnTop()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "HideControlOnTheTop"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBrightnessOnTop()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessOnTop(Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "ExpandSelectedNotifications"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Notification"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v10}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x3

    if-lt v8, v0, :cond_f

    const/4 v0, 0x5

    if-le v8, v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanelGridView"

    const-string/jumbo v2, "GridOption"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQSPanelGrid(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanel"

    const-string/jumbo v2, "GridOption"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "GridOption"

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "EmNotificationManager"

    const-string/jumbo v1, "panel already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "QuickPanel"

    const-string/jumbo v2, "quickpanel"

    const-string/jumbo v3, "close"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessOnTop(Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_3
.end method
