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
    .locals 5

    const-string/jumbo v2, "EmNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onParamFillingReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenStates()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "QuickPanelChangeGrid"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "ChangeGrid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "EmNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paramChangeGrid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const-string/jumbo v2, "ClearSelectedNotifications"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v3, "ClearSelectedNotifications"

    invoke-static {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "ExpandSelectedNotifications"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v3, "ExpandSelectedNotifications"

    invoke-static {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "OpenSelectedNotifications"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    const-string/jumbo v3, "OpenSelectedNotifications"

    invoke-static {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto :goto_0
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

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->isPanelExpandState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

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
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v17

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ruleId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ClearSelectedNotifications"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-set0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap4(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v1, "ExpandSelectedNotifications"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "OpenSelectedNotifications"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ExpandSelectedNotifications"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "QuickPanelEditMode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showEdit()V

    const-string/jumbo v1, "QuickPanelEditMode"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "QuickPanelGridView"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "QuickPanelChangeGrid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showGridPopup()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "ChangeGrid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    :cond_6
    const-string/jumbo v1, "QuickPanelGridView"

    const-string/jumbo v2, "GridOption"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "QuickPanelContactUs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->launchContactUsApp()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "QuickPanel"

    const-string/jumbo v2, "Contactus"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "CloseQuickPanel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->isPanelExpandState()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "panel closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    const-string/jumbo v1, "QuickPanel"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "BrightnessSettingPanel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "ShowControlOnTheTop"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBrightnessOnTop()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "HideControlOnTheTop"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBrightnessOnTop()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessOnTop(Z)Z

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "SelectAllNotiToRead"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-set0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getHiddenNotificationOnLockscreen()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "there is no notification....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Notification"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "SelectAppNotiToRead"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-set0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getHiddenNotificationOnLockscreen()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "there is no notification....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Notification"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "SelectLatestNotiToRead"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-set0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getHiddenNotificationOnLockscreen()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "there is no notification....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Latest noti"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "ReadoutNotifications"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "ExpandSelectedNotifications"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    :cond_11
    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Notification"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1, v12}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v1, "QuickPanel"

    const-string/jumbo v2, "Contactus"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "panel already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "QuickPanel"

    const-string/jumbo v2, "quickpanel"

    const-string/jumbo v3, "close"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get3(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessOnTop(Z)Z

    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v1, "BrightnessSettingPanel"

    const-string/jumbo v2, "Brightness"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->readAllNotification()Ljava/lang/StringBuffer;

    move-result-object v13

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "hidden notification on lockscreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Lockscreen"

    const-string/jumbo v2, "AllNoti hidden"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_5

    :cond_1a
    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->getAllNotificationCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Lockscreen"

    const-string/jumbo v2, "AppNoti hidden"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "item_count"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->getAllNotificationCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tts length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get0(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestTts(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;)V

    goto/16 :goto_5

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v11, :cond_1e

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->isHiddenNotificationOnLockscreen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "hidden matched notification on lockscreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Lockscreen"

    const-string/jumbo v2, "AppNoti hidden"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v6, v15, v0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->readAppNameNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    if-eqz v13, :cond_1d

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1d

    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->getAppNotificationCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Lockscreen"

    const-string/jumbo v2, "AppNoti hidden"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "AppName"

    const-string/jumbo v7, "item_count"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->getAppNotificationCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1, v13}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/StringBuffer;)V

    goto/16 :goto_6

    :cond_1d
    const-string/jumbo v1, "EmNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no match appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_6

    :cond_1e
    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "no match appName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-get1(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;)Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->readLatestNotification(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    if-eqz v13, :cond_20

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_21

    :cond_20
    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "hidden notification on lockscreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Latest noti hidden"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_7

    :cond_21
    const-string/jumbo v1, "EmNotificationManager"

    const-string/jumbo v2, "readout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Latest noti hidden"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    invoke-static {v1, v13}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->-wrap2(Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;Ljava/lang/StringBuffer;)V

    goto/16 :goto_7
.end method
