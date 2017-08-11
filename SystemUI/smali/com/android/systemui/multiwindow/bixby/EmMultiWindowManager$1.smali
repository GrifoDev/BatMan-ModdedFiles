.class Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;
.super Ljava/lang/Object;
.source "EmMultiWindowManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2

    const-string/jumbo v0, "EmMultiWindowManager"

    const-string/jumbo v1, "[InterimStateListener] onParamFillingReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "EmMultiWindowManager"

    const-string/jumbo v1, "[InterimStateListener] onParamFillingReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "EmMultiWindowManager"

    const-string/jumbo v2, "onScreenStatesRequested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "EmMultiWindowManager"

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

    :cond_1
    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 34

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v27

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-set0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] onStateReceived() ruleId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  stateId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SystemUI_4001"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "MultiWindow"

    const-string/jumbo v4, "State"

    const-string/jumbo v5, "yes"

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] ruleId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is done."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "SystemUI_4002"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "closeAppName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] onStateReceived()  -SystemUI_4002-   appName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const/4 v3, 0x1

    invoke-static {v1, v15, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "CloseApp"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "SystemUI_4003"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "closeAppDir"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] onStateReceived()  -SystemUI_4003-   appDir = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1, v14}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "CloseWhichApp"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "SystemUI_4004"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Landroid/content/Context;

    move-result-object v33

    check-cast v33, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/stackdivider/DividerPanel;

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v28

    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v23

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    iget-object v1, v1, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    iget-object v1, v1, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    iget-object v1, v1, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    :goto_2
    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] onStateReceived()  -SystemUI_4004-   orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  topActivity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  visible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-boolean v4, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_11

    move-object/from16 v0, v18

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "Landscape"

    const-string/jumbo v10, "Mode"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "SystemUI_4005"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "closeAppName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "closeAppDir"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const/16 v32, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "packageName"

    move-object/from16 v0, v25

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "directionCH"

    move-object/from16 v0, v24

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] onStateReceived()  -SystemUI_4005-  pCloseAppName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pCloseAppDir= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", strAppName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", strAppDir = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v25, :cond_6

    if-eqz v31, :cond_6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_6
    if-eqz v24, :cond_7

    if-eqz v30, :cond_7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "CloseWhatApp"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "MultiWindow_4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EmMultiWindowManager"

    const-string/jumbo v3, "[InterimStateListener] ---MultiWindow_4--- "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "App"

    const-string/jumbo v10, "Opened"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "EmMultiWindowManager"

    const-string/jumbo v3, "[InterimStateListener] not ExpandedDockedStack"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "MultiWindow"

    const-string/jumbo v10, "State"

    const-string/jumbo v11, "no"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "CloseApp"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "CloseApp"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "MultiWindow"

    const-string/jumbo v10, "State"

    const-string/jumbo v11, "no"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "CloseWhichApp"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "CloseWhichApp"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "MultiWindow"

    const-string/jumbo v10, "State"

    const-string/jumbo v11, "no"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v20

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] Failed getConfiguration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "MultiWindow"

    const-string/jumbo v10, "Disabled"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/stackdivider/DividerPanel;->isSnapViewActivated()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "Snapwindow"

    const-string/jumbo v10, "Enabled"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, v22

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, v22

    iget-boolean v1, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "Recentview"

    const-string/jumbo v10, "Focused"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "Homescreen"

    const-string/jumbo v10, "Mode"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    if-eqz v19, :cond_16

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/stackdivider/DividerPanel;->canStartSnapView()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "Snapwindow"

    const-string/jumbo v10, "Available"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "Snapwindow"

    const-string/jumbo v10, "Available"

    const-string/jumbo v11, "no"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    if-eqz v19, :cond_17

    const-string/jumbo v1, "fromFullApp"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->showSnapWindowGuideView(ILjava/lang/String;)V

    goto :goto_3

    :cond_1a
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "AppName"

    move-object/from16 v0, v25

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] pCloseAppName strSlotValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", nlgResultStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "closeAppName"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "closeAppName"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, v30

    invoke-static {v1, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "directionText"

    move-object/from16 v0, v24

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] pCloseAppDir strSlotValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", nlgResultStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "OtherApp"

    const-string/jumbo v9, "closeAppDir"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Split"

    const-string/jumbo v9, "closeAppName"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Split"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    if-eqz v25, :cond_1f

    if-eqz v31, :cond_1f

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "CloseWhatApp"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "Root"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "AppName"

    move-object/from16 v0, v25

    invoke-static {v1, v0, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[InterimStateListener] pCloseAppName strSlotValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", nlgResultStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "closeAppName"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "yes"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "closeAppName"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "no"

    const/4 v13, 0x0

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v3, "OtherApp"

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v8, "Root"

    const-string/jumbo v9, "App"

    const-string/jumbo v10, "Opened"

    const-string/jumbo v11, "no"

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
